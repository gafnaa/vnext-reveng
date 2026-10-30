// Re-seed the 42 application functions whose Ghidra body stopped after the
// 24-byte AOT prolog, using the full byte extent reported by Blutter.
// The input TSV columns are: blutter_address, size, ghidra_name.
// Ghidra addresses are Blutter addresses plus the image base 0x100000.
//@category Simaster

import ghidra.app.cmd.disassemble.DisassembleCommand;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.FunctionManager;
import ghidra.program.model.symbol.SourceType;

import java.io.BufferedWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

public class ReseedBody24 extends GhidraScript {

    private static final long GHIDRA_IMAGE_BASE = 0x100000L;

    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length < 2 || args.length > 3) {
            throw new IllegalArgumentException(
                "Usage: input.tsv outputDirectory [timeoutSeconds]");
        }

        Path input = Paths.get(args[0]).toAbsolutePath().normalize();
        Path output = Paths.get(args[1]).toAbsolutePath().normalize();
        int timeoutSeconds = args.length == 3 ? Integer.parseInt(args[2]) : 120;
        if (timeoutSeconds < 1) {
            throw new IllegalArgumentException("timeoutSeconds must be positive");
        }
        Files.createDirectories(output);

        FunctionManager manager = currentProgram.getFunctionManager();
        DecompInterface decompiler = new DecompInterface();
        if (!decompiler.openProgram(currentProgram)) {
            throw new IllegalStateException("Decompiler could not open current program");
        }

        long rows = 0;
        long reseeded = 0;
        long skippedOverlap = 0;
        long failed = 0;
        long clean = 0;
        long partialControlFlow = 0;
        long partialBadInstruction = 0;
        long bytesBefore = 0;
        long bytesAfter = 0;
        long fullExtent = 0;
        long shortBody = 0;

        Path indexPath = output.resolve("reseed-index.tsv");
        try (BufferedWriter index = Files.newBufferedWriter(indexPath, StandardCharsets.UTF_8)) {
            index.write("address\tsize\tname\tbody_before\tbody_after\tbody_ranges\t"
                + "disassembled\tstatus\tfile\tdetail\n");
            List<String> lines = Files.readAllLines(input, StandardCharsets.UTF_8);
            for (String line : lines) {
                monitor.checkCancelled();
                if (line.isEmpty() || line.startsWith("address\t")) {
                    continue;
                }
                String[] fields = line.split("\t", -1);
                if (fields.length < 3) {
                    throw new IllegalArgumentException("Malformed TSV row: " + line);
                }
                long blutterAddress = Long.parseUnsignedLong(strip0x(fields[0]), 16);
                long size = Long.parseUnsignedLong(strip0x(fields[1]), 16);
                String name = safeName(fields[2]);
                if (size < 1) {
                    throw new IllegalArgumentException("Zero-size function: " + line);
                }
                rows++;

                Address start = toAddr(GHIDRA_IMAGE_BASE + blutterAddress);
                Address end = start.add(size - 1);
                AddressSet range = new AddressSet(start, end);

                Function atStart = manager.getFunctionAt(start);
                long before = atStart == null ? 0 : atStart.getBody().getNumAddresses();
                bytesBefore += before;
                fullExtent += size;

                List<String> overlaps = new ArrayList<>();
                FunctionIterator functions = manager.getFunctions(start, true);
                while (functions.hasNext()) {
                    Function candidate = functions.next();
                    if (candidate.getEntryPoint().compareTo(end) > 0) {
                        break;
                    }
                    if (candidate.getEntryPoint().equals(start)) {
                        continue;
                    }
                    if (candidate.getBody().intersects(range)) {
                        overlaps.add("0x" + candidate.getEntryPoint() + ":" + candidate.getName());
                    }
                }
                if (!overlaps.isEmpty()) {
                    skippedOverlap++;
                    index.write(row(blutterAddress, size, name, before, 0, 0, false,
                        "overlap", "", "skipped; intersects " + String.join(",", overlaps)));
                    continue;
                }

                if (atStart != null) {
                    removeFunction(atStart);
                }
                clearListing(start, end);
                DisassembleCommand disassemble = new DisassembleCommand(start, range, true);
                boolean disassembled = disassemble.applyTo(currentProgram, monitor);
                Function function = getFunctionAt(start);
                if (function == null) {
                    function = createFunction(start, name);
                }
                if (function == null) {
                    failed++;
                    index.write(row(blutterAddress, size, name, before, 0, 0, disassembled,
                        "failed", "", "could not create function"));
                    continue;
                }
                if (!function.getName().equals(name)) {
                    function.setName(name, SourceType.USER_DEFINED);
                }

                long after = function.getBody().getNumAddresses();
                bytesAfter += after;
                if (after < size) {
                    shortBody++;
                }
                reseeded++;

                monitor.setMessage("Decompile " + reseeded + " " + start);
                DecompileResults result = decompiler.decompileFunction(function, timeoutSeconds, monitor);
                if (!result.decompileCompleted() || result.getDecompiledFunction() == null) {
                    failed++;
                    index.write(row(blutterAddress, size, name, before, after,
                        function.getBody().getNumAddressRanges(), disassembled, "failed", "",
                        cleanField(result.getErrorMessage())));
                    continue;
                }

                String cText = result.getDecompiledFunction().getC();
                String filename = start.toString().substring(2) + "-" + name + ".c";
                Path pseudocode = output.resolve(filename);
                try (BufferedWriter code = Files.newBufferedWriter(pseudocode, StandardCharsets.UTF_8)) {
                    code.write("/* Ghidra address: 0x" + start + " */\n");
                    code.write("/* Blutter file address: 0x" + Long.toHexString(blutterAddress) + " */\n");
                    code.write("/* Function label: " + function.getName() + " */\n\n");
                    code.write(cText);
                    code.write("\n");
                }

                boolean badInstruction = cText.contains("Bad instruction") || cText.contains("halt_baddata()");
                boolean badJumpTable = cText.contains("Could not recover jumptable")
                    || cText.contains("Treating indirect jump as call");
                String status;
                String detail;
                if (badInstruction) {
                    partialBadInstruction++;
                    status = "partial-bad-instruction";
                    detail = "Ghidra emitted a bad-instruction warning";
                }
                else if (badJumpTable) {
                    partialControlFlow++;
                    status = "partial-control-flow";
                    detail = "Ghidra could not recover one or more indirect jump tables";
                }
                else {
                    clean++;
                    status = "decompiled";
                    detail = "";
                }
                index.write(row(blutterAddress, size, name, before, after,
                    function.getBody().getNumAddressRanges(), disassembled, status, filename, detail));
            }
        }
        finally {
            decompiler.dispose();
        }

        long totalFunctions = 0;
        FunctionIterator all = manager.getFunctions(true);
        while (all.hasNext()) {
            all.next();
            totalFunctions++;
        }

        Path summary = output.resolve("reseed-summary.txt");
        try (BufferedWriter writer = Files.newBufferedWriter(summary, StandardCharsets.UTF_8)) {
            writer.write("program=" + currentProgram.getName() + "\n");
            writer.write("rows=" + rows + "\n");
            writer.write("reseeded=" + reseeded + "\n");
            writer.write("skipped_overlap=" + skippedOverlap + "\n");
            writer.write("failed=" + failed + "\n");
            writer.write("clean_pseudocode=" + clean + "\n");
            writer.write("partial_control_flow=" + partialControlFlow + "\n");
            writer.write("partial_bad_instruction=" + partialBadInstruction + "\n");
            writer.write("body_bytes_before=" + bytesBefore + "\n");
            writer.write("body_bytes_after=" + bytesAfter + "\n");
            writer.write("blutter_extent_bytes=" + fullExtent + "\n");
            writer.write("short_body=" + shortBody + "\n");
            writer.write("function_manager_total_after=" + totalFunctions + "\n");
            writer.write("timeout_seconds=" + timeoutSeconds + "\n");
            writer.write("index=" + indexPath + "\n");
        }
        println("Finished: rows=" + rows + ", reseeded=" + reseeded + ", skipped_overlap="
            + skippedOverlap + ", failed=" + failed + ", clean=" + clean
            + ", partial_control_flow=" + partialControlFlow + ", partial_bad_instruction="
            + partialBadInstruction + ", body_before=" + bytesBefore + ", body_after=" + bytesAfter
            + ", blutter_extent=" + fullExtent + ", short_body=" + shortBody
            + ", total_functions=" + totalFunctions);
        println("Index: " + indexPath);
    }

    private String strip0x(String value) {
        return value.startsWith("0x") || value.startsWith("0X") ? value.substring(2) : value;
    }

    private String row(long blutterAddress, long size, String name, long before, long after,
            long ranges, boolean disassembled, String status, String file, String detail) {
        return "0x" + Long.toHexString(blutterAddress) + "\t0x" + Long.toHexString(size) + "\t"
            + cleanField(name) + "\t" + before + "\t" + after + "\t" + ranges + "\t"
            + disassembled + "\t" + status + "\t" + file + "\t" + cleanField(detail) + "\n";
    }

    private String cleanField(String value) {
        if (value == null) return "";
        return value.replace('\t', ' ').replace('\n', ' ').replace('\r', ' ');
    }

    private String safeName(String value) {
        String safe = value.replaceAll("[^A-Za-z0-9._-]+", "_");
        if (safe.length() > 120) safe = safe.substring(0, 120);
        return safe.isEmpty() ? "anonymous" : safe;
    }
}
