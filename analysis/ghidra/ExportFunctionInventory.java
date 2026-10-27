// Export every function entry from the current Ghidra program.
//@category Simaster

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;

import java.io.BufferedWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class ExportFunctionInventory extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length != 1) {
            throw new IllegalArgumentException("Usage: output.tsv");
        }
        Path output = Paths.get(args[0]).toAbsolutePath().normalize();
        Files.createDirectories(output.getParent());
        try (BufferedWriter writer = Files.newBufferedWriter(output, StandardCharsets.UTF_8)) {
            writer.write("address\tname\tbody_bytes\tbody_ranges\texternal\n");
            FunctionIterator functions = currentProgram.getFunctionManager().getFunctions(true);
            while (functions.hasNext()) {
                monitor.checkCancelled();
                Function f = functions.next();
                writer.write("0x" + Long.toHexString(f.getEntryPoint().getOffset()) + "\t"
                    + f.getName() + "\t" + f.getBody().getNumAddresses() + "\t"
                    + f.getBody().getNumAddressRanges() + "\t" + f.isExternal() + "\n");
            }
        }
    }
}
