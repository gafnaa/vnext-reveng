// Decompile every internal function currently defined in the imported program.
// This enumerates the Ghidra database; it does not prove the database found every AOT function.
//@category Simaster

import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.FunctionManager;

import java.io.BufferedWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class DecompileAllFunctions extends GhidraScript {

	@Override
	public void run() throws Exception {
		String[] args = getScriptArgs();
		if (args.length < 1 || args.length > 2) {
			throw new IllegalArgumentException("Usage: outputDirectory [timeoutSeconds]");
		}

		Path output = Paths.get(args[0]).toAbsolutePath().normalize();
		int timeoutSeconds = args.length == 2 ? Integer.parseInt(args[1]) : 15;
		if (timeoutSeconds < 1) {
			throw new IllegalArgumentException("timeoutSeconds must be positive");
		}
		Files.createDirectories(output);

		FunctionManager manager = currentProgram.getFunctionManager();
		long inventoryCount = 0;
		long externalFunctionCount = 0;
		long nonCodeCandidateCount = 0;
		FunctionIterator countIterator = manager.getFunctions(true);
		while (countIterator.hasNext()) {
			Function candidate = countIterator.next();
			inventoryCount++;
			if (candidate.isExternal()) {
				externalFunctionCount++;
			}
			else if ("_kDartIsolateSnapshotInstructions".equals(candidate.getName()) && candidate.getBody().getNumAddresses() <= 1) {
				nonCodeCandidateCount++;
			}
		}
		long codeFunctionDenominator = inventoryCount - externalFunctionCount - nonCodeCandidateCount;

		long attempted = 0;
		long decompiled = 0;
		long failed = 0;
		long external = 0;
		long nonCodeCandidates = 0;
		long cleanPseudocode = 0;
		long partialControlFlow = 0;
		long partialBadInstruction = 0;
		DecompInterface decompiler = new DecompInterface();
		if (!decompiler.openProgram(currentProgram)) {
			throw new IllegalStateException("Decompiler could not open current program");
		}

		Path indexPath = output.resolve("function-index.tsv");
		try (BufferedWriter index = Files.newBufferedWriter(indexPath, StandardCharsets.UTF_8)) {
			index.write("address\tname\tbody_bytes\tbody_ranges\tstatus\tfile\tdetail\n");
			FunctionIterator iterator = manager.getFunctions(true);
			while (iterator.hasNext()) {
				monitor.checkCancelled();
				Function function = iterator.next();
				Address entry = function.getEntryPoint();
				String address = "0x" + Long.toHexString(entry.getOffset());
				String name = cleanField(function.getName());
				long bodyBytes = function.getBody().getNumAddresses();
				long bodyRanges = function.getBody().getNumAddressRanges();

				if (function.isExternal()) {
					external++;
					index.write(row(address, name, bodyBytes, bodyRanges, "external", "", "external function body"));
					continue;
				}
				// ELF marks this large Dart snapshot instruction blob as OBJECT, not FUNC.
				// Ghidra may create a one-byte stub at its start; keep it out of the code denominator.
				if ("_kDartIsolateSnapshotInstructions".equals(function.getName()) && bodyBytes <= 1) {
					nonCodeCandidates++;
					index.write(row(address, name, bodyBytes, bodyRanges, "non-code-candidate", "", "ELF OBJECT symbol; one-byte bad-instruction stub"));
					continue;
				}

				attempted++;
				monitor.setMessage("Ghidra decompile " + attempted + "/" + codeFunctionDenominator + " " + address);
				DecompileResults result = decompiler.decompileFunction(function, timeoutSeconds, monitor);
				if (result.decompileCompleted() && result.getDecompiledFunction() != null) {
					String cText = result.getDecompiledFunction().getC();
					String filename = address.substring(2) + "-" + safeName(name) + ".c";
					Path pseudocode = output.resolve(filename);
					try (BufferedWriter code = Files.newBufferedWriter(pseudocode, StandardCharsets.UTF_8)) {
						code.write("/* Ghidra address: " + address + " */\n");
						code.write("/* Function label: " + name + " */\n\n");
						code.write(cText);
						code.write("\n");
					}
					decompiled++;
					boolean badInstruction = cText.contains("Bad instruction") || cText.contains("halt_baddata()");
					boolean badJumpTable = cText.contains("Could not recover jumptable") || cText.contains("Treating indirect jump as call");
					if (badInstruction) {
						partialBadInstruction++;
						index.write(row(address, name, bodyBytes, bodyRanges, "partial-bad-instruction", filename, "Ghidra emitted a bad-instruction warning"));
					}
					else if (badJumpTable) {
						partialControlFlow++;
						index.write(row(address, name, bodyBytes, bodyRanges, "partial-control-flow", filename, "Ghidra could not recover one or more indirect jump tables"));
					}
					else {
						cleanPseudocode++;
						index.write(row(address, name, bodyBytes, bodyRanges, "decompiled", filename, ""));
					}
				}
				else {
					failed++;
					String detail = cleanField(result.getErrorMessage());
					index.write(row(address, name, bodyBytes, bodyRanges, "failed", "", detail));
				}

				if (attempted % 100 == 0) {
					index.flush();
					println("Progress: attempted=" + attempted + ", decompiled=" + decompiled + ", failed=" + failed + ", external=" + external);
				}
			}
		}
		finally {
			decompiler.dispose();
		}

		long pseudocodeBytes = 0;
		try (java.util.stream.Stream<Path> files = Files.list(output)) {
			pseudocodeBytes = files.filter(path -> path.getFileName().toString().endsWith(".c"))
				.mapToLong(path -> {
					try { return Files.size(path); }
					catch (Exception ignored) { return 0; }
				}).sum();
		}
		Path summary = output.resolve("summary.txt");
		try (BufferedWriter writer = Files.newBufferedWriter(summary, StandardCharsets.UTF_8)) {
			writer.write("program=" + currentProgram.getName() + "\n");
			writer.write("inventory_functions=" + inventoryCount + "\n");
			writer.write("attempted_internal_functions=" + attempted + "\n");
			writer.write("code_function_denominator=" + codeFunctionDenominator + "\n");
			writer.write("pseudocode_generated=" + decompiled + "\n");
			writer.write("clean_pseudocode=" + cleanPseudocode + "\n");
			writer.write("partial_control_flow=" + partialControlFlow + "\n");
			writer.write("partial_bad_instruction=" + partialBadInstruction + "\n");
			writer.write("failed=" + failed + "\n");
			writer.write("non_code_candidates=" + nonCodeCandidates + "\n");
			writer.write("external=" + external + "\n");
			writer.write("timeout_seconds=" + timeoutSeconds + "\n");
			writer.write("pseudocode_bytes=" + pseudocodeBytes + "\n");
			writer.write("index=" + indexPath + "\n");
		}
		println("Finished: inventory=" + inventoryCount + ", attempted=" + attempted + ", pseudocode=" + decompiled + ", clean=" + cleanPseudocode + ", partial_control_flow=" + partialControlFlow + ", partial_bad_instruction=" + partialBadInstruction + ", failed=" + failed + ", non_code_candidates=" + nonCodeCandidates + ", external=" + external + ", pseudocode_bytes=" + pseudocodeBytes);
		println("Index: " + indexPath);
	}

	private String row(String address, String name, long bodyBytes, long bodyRanges, String status, String file, String detail) {
		return address + "\t" + name + "\t" + bodyBytes + "\t" + bodyRanges + "\t" + status + "\t" + file + "\t" + detail + "\n";
	}

	private String cleanField(String value) {
		if (value == null) return "";
		return value.replace('\t', ' ').replace('\n', ' ').replace('\r', ' ');
	}

	private String safeName(String value) {
		String safe = value.replaceAll("[^A-Za-z0-9._-]+", "_");
		if (safe.length() > 80) safe = safe.substring(0, 80);
		return safe.isEmpty() ? "anonymous" : safe;
	}
}
