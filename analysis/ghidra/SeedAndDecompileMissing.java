// Seed missing Dart AOT functions from a Blutter-derived TSV and decompile them.
// The TSV columns are: blutter_address, size, ghidra_name, source_file, source_line.
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
import java.util.List;

public class SeedAndDecompileMissing extends GhidraScript {

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
        int timeoutSeconds = args.length == 3 ? Integer.parseInt(args[2]) : 5;
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
        long existing = 0;
        long overlaps = 0;
        long attempted = 0;
        long decompiled = 0;
        long clean = 0;
        long partialControlFlow = 0;
        long partialBadInstruction = 0;
        long failed = 0;

        Path indexPath = output.resolve("function-index.tsv");
        try (BufferedWriter index = Files.newBufferedWriter(indexPath, StandardCharsets.UTF_8)) {
            index.write("address\tname\tbody_bytes\tbody_ranges\tstatus\tfile\tdetail\n");
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
                if (atStart != null) {
                    existing++;
                    index.write(row(start, atStart.getName(), atStart.getBody().getNumAddresses(),
                        atStart.getBody().getNumAddressRanges(), "existing",
                        "", "function already present; not re-decompiled"));
                    continue;
                }

                Function containing = manager.getFunctionContaining(start);
                if (containing != null) {
                    overlaps++;
                    index.write(row(start, name, size, 1, "overlap", "",
                        "existing function " + containing.getName() + " contains requested start"));
                    continue;
                }

                boolean hasOverlap = false;
                FunctionIterator functions = manager.getFunctions(start, true);
                while (functions.hasNext()) {
                    Function candidate = functions.next();
                    if (candidate.getEntryPoint().compareTo(end) > 0) {
                        break;
                    }
                    if (candidate.getBody().intersects(range)) {
                        hasOverlap = true;
                        overlaps++;
                        index.write(row(start, name, size, 1, "overlap", "",
                            "existing function " + candidate.getName() + " intersects requested range"));
                        break;
                    }
                }
                if (hasOverlap) {
                    continue;
                }

                DisassembleCommand disassemble = new DisassembleCommand(start, range, true);
                boolean disassembled = disassemble.applyTo(currentProgram, monitor);
                Function function = getFunctionAt(start);
                if (function == null) {
                    function = createFunction(start, name);
                }
                if (function == null) {
                    failed++;
                    index.write(row(start, name, size, 1, "failed", "",
                        "could not create function after disassembly=" + disassembled));
                    continue;
                }
                if (function.getName().startsWith("FUN_") || function.getName().startsWith("undefined")) {
                    function.setName(name, SourceType.USER_DEFINED);
                }

                attempted++;
                monitor.setMessage("Decompile " + attempted + " " + start);
                DecompileResults result = decompiler.decompileFunction(function, timeoutSeconds, monitor);
                if (!result.decompileCompleted() || result.getDecompiledFunction() == null) {
                    failed++;
                    index.write(row(start, function.getName(), function.getBody().getNumAddresses(),
                        function.getBody().getNumAddressRanges(), "failed", "",
                        cleanField(result.getErrorMessage())));
                    continue;
                }

                String cText = result.getDecompiledFunction().getC();
                String filename = start.toString().substring(2) + "-" + safeName(function.getName()) + ".c";
                Path pseudocode = output.resolve(filename);
                try (BufferedWriter code = Files.newBufferedWriter(pseudocode, StandardCharsets.UTF_8)) {
                    code.write("/* Ghidra address: 0x" + start + " */\n");
                    code.write("/* Function label: " + function.getName() + " */\n\n");
                    code.write(cText);
                    code.write("\n");
                }

                decompiled++;
                boolean badInstruction = cText.contains("Bad instruction") || cText.contains("halt_baddata()");
                boolean badJumpTable = cText.contains("Could not recover jumptable")
                    || cText.contains("Treating indirect jump as call");
                if (badInstruction) {
                    partialBadInstruction++;
                    index.write(row(start, function.getName(), function.getBody().getNumAddresses(),
                        function.getBody().getNumAddressRanges(), "partial-bad-instruction", filename,
                        "Ghidra emitted a bad-instruction warning"));
                }
                else if (badJumpTable) {
                    partialControlFlow++;
                    index.write(row(start, function.getName(), function.getBody().getNumAddresses(),
                        function.getBody().getNumAddressRanges(), "partial-control-flow", filename,
                        "Ghidra could not recover one or more indirect jump tables"));
                }
                else {
                    clean++;
                    index.write(row(start, function.getName(), function.getBody().getNumAddresses(),
                        function.getBody().getNumAddressRanges(), "decompiled", filename, ""));
                }
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

        Path summary = output.resolve("summary.txt");
        try (BufferedWriter writer = Files.newBufferedWriter(summary, StandardCharsets.UTF_8)) {
            writer.write("program=" + currentProgram.getName() + "\n");
            writer.write("rows=" + rows + "\n");
            writer.write("existing=" + existing + "\n");
            writer.write("overlap=" + overlaps + "\n");
            writer.write("attempted=" + attempted + "\n");
            writer.write("decompiled=" + decompiled + "\n");
            writer.write("clean_pseudocode=" + clean + "\n");
            writer.write("partial_control_flow=" + partialControlFlow + "\n");
            writer.write("partial_bad_instruction=" + partialBadInstruction + "\n");
            writer.write("failed=" + failed + "\n");
            writer.write("function_manager_total_after=" + totalFunctions + "\n");
            writer.write("timeout_seconds=" + timeoutSeconds + "\n");
            writer.write("index=" + indexPath + "\n");
        }
        println("Finished: rows=" + rows + ", existing=" + existing + ", overlap=" + overlaps
            + ", attempted=" + attempted + ", decompiled=" + decompiled + ", clean=" + clean
            + ", partial_control_flow=" + partialControlFlow + ", partial_bad_instruction="
            + partialBadInstruction + ", failed=" + failed + ", total_functions=" + totalFunctions);
        println("Index: " + indexPath);
    }

    private String strip0x(String value) {
        return value.startsWith("0x") || value.startsWith("0X") ? value.substring(2) : value;
    }

    private String row(Address address, String name, long bodyBytes, long bodyRanges,
            String status, String file, String detail) {
        return "0x" + Long.toHexString(address.getOffset()) + "\t" + cleanField(name) + "\t"
            + bodyBytes + "\t" + bodyRanges + "\t" + status + "\t" + file + "\t"
            + cleanField(detail) + "\n";
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
