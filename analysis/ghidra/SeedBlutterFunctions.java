// Seed selected Dart AOT entry points using exact function starts and byte sizes
// recovered by Blutter for the matching libapp.so hash.
//@category Simaster

import ghidra.app.cmd.disassemble.DisassembleCommand;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.symbol.SourceType;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.math.BigInteger;

public class SeedBlutterFunctions extends GhidraScript {

	private static final BigInteger GHIDRA_IMAGE_BASE = new BigInteger("100000", 16);

	@Override
	public void run() throws Exception {
		String[] args = getScriptArgs();
		if (args.length < 2) {
			throw new IllegalArgumentException(
				"Usage: outputPath blutterAddress,sizeHex,functionName [...]");
		}

		int functionCount = args.length - 1;
		Address[] starts = new Address[functionCount];
		Address[] ends = new Address[functionCount];
		Function[] functions = new Function[functionCount];
		String[] names = new String[functionCount];
		String[] blutterAddresses = new String[functionCount];
		String[] sizes = new String[functionCount];
		boolean[] disassemblyResults = new boolean[functionCount];

		for (int i = 0; i < functionCount; i++) {
			monitor.checkCancelled();
			String[] fields = args[i + 1].split(",", 3);
			if (fields.length != 3) {
				throw new IllegalArgumentException("Invalid function tuple: " + args[i + 1]);
			}
			BigInteger blutterAddress = parseHex(fields[0]);
			BigInteger size = parseHex(fields[1]);
			starts[i] = toAddr(blutterAddress.add(GHIDRA_IMAGE_BASE).longValueExact());
			ends[i] = starts[i].add(size.longValueExact() - 1);
			names[i] = fields[2];
			blutterAddresses[i] = fields[0];
			sizes[i] = fields[1];

			clearListing(starts[i], ends[i]);
			AddressSet restrictedRange = new AddressSet(starts[i], ends[i]);
			DisassembleCommand disassemble = new DisassembleCommand(starts[i], restrictedRange, true);
			disassemblyResults[i] = disassemble.applyTo(currentProgram, monitor);

			functions[i] = getFunctionAt(starts[i]);
			if (functions[i] == null) {
				functions[i] = createFunction(starts[i], names[i]);
			}
			if (functions[i] != null && !functions[i].getName().equals(names[i])) {
				functions[i].setName(names[i], SourceType.USER_DEFINED);
			}
		}

		long totalFunctions = 0;
		FunctionIterator allFunctions = currentProgram.getFunctionManager().getFunctions(true);
		while (allFunctions.hasNext()) {
			allFunctions.next();
			totalFunctions++;
		}

		DecompInterface decompiler = new DecompInterface();
		decompiler.openProgram(currentProgram);
		try (BufferedWriter out = new BufferedWriter(new FileWriter(args[0]))) {
			out.write("# Ghidra 12.1.4 decompilation of selected Dart AOT functions\n\n");
			out.write("Source ELF SHA-256: 3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290\n\n");
			out.write("Blutter source addresses are ELF file-backed coordinates. Ghidra imported this ELF with image base 0x100000, so the script uses Ghidra address = Blutter address + 0x100000. Names and byte extents come from Blutter's labeled output; instruction decoding and pseudocode below come from Ghidra.\n\n");
			out.write("Ghidra function inventory after analysis and seeding: `" + totalFunctions + "`\n\n");

			for (int i = 0; i < functionCount; i++) {
				monitor.checkCancelled();
				out.write("## " + names[i] + "\n\n");
				out.write("- Blutter address: `" + blutterAddresses[i] + "`\n");
				out.write("- Ghidra address: `0x" + Long.toHexString(starts[i].getOffset()) + "`\n");
				out.write("- Blutter byte extent: `" + sizes[i] + "` bytes (inclusive end `0x" + Long.toHexString(ends[i].getOffset()) + "`)\n");
				out.write("- Ghidra bounded disassembly command: `" + disassemblyResults[i] + "`\n");
				Function function = functions[i];
				if (function == null) {
					out.write("- Function creation: failed\n\n");
					continue;
				}
				out.write("- Ghidra function entry: `0x" + Long.toHexString(function.getEntryPoint().getOffset()) + "`\n");
				out.write("- Ghidra body bytes: `" + function.getBody().getNumAddresses() + "`\n");
				out.write("- Ghidra body address ranges: `" + function.getBody().getNumAddressRanges() + "`\n\n");

				DecompileResults result = decompiler.decompileFunction(function, 120, monitor);
				if (result.decompileCompleted() && result.getDecompiledFunction() != null) {
					out.write("```c\n");
					out.write(result.getDecompiledFunction().getC());
					out.write("\n```\n\n");
				}
				else {
					out.write("Ghidra pseudocode unavailable: " + result.getErrorMessage() + "\n\n");
				}
				out.flush();
			}
		}
		finally {
			decompiler.dispose();
		}
	}

	private BigInteger parseHex(String value) {
		String canonical = value.startsWith("0x") ? value.substring(2) : value;
		return new BigInteger(canonical, 16);
	}
}
