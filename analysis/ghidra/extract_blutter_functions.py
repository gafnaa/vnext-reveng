#!/usr/bin/env python3
"""Extract Blutter function headers into a Ghidra seed TSV.

Blutter writes one Dart file per class and marks every function with a line
like:

    // ** addr: 0xfda15c, size: 0x430

The following columns are emitted for ``SeedAndDecompileMissing.java``:

    address, size, ghidra_name, source_file, source_line

Addresses remain in Blutter/file-backed coordinates. The Ghidra script adds
the image base (0x100000) itself.
"""

import argparse
import os
import re
import sys
from pathlib import Path

HEADER = re.compile(
    r"^\s*// \*\* addr: (0x[0-9a-fA-F]+), size: (0x[0-9a-fA-F]+)"
)
SAFE = re.compile(r"[^A-Za-z0-9._-]+")


def method_name(lines, index):
    """Return a sanitized method label from the line before a header."""
    cursor = index - 1
    while cursor >= 0 and not lines[cursor].strip():
        cursor -= 1
    signature = lines[cursor].strip() if cursor >= 0 else "unknown"
    method = signature.split("(", 1)[0].strip()
    method = re.sub(r"^\[closure\]\s*", "closure_", method)
    method = SAFE.sub("_", method).strip("_") or "anonymous"
    return method, cursor + 1


def collect(root):
    rows = []
    seen = {}
    duplicates = 0
    for directory, _, filenames in os.walk(str(root)):
        for filename in sorted(filenames):
            if not filename.endswith(".dart"):
                continue
            path = Path(directory) / filename
            relative = path.relative_to(root).as_posix()
            stem = relative[:-5] if relative.endswith(".dart") else relative
            base = SAFE.sub("_", stem).strip("_") or "unknown"
            try:
                lines = path.read_text(encoding="utf-8", errors="replace").splitlines()
            except OSError as exc:
                print("warning: cannot read {}: {}".format(relative, exc), file=sys.stderr)
                continue
            for index, line in enumerate(lines):
                match = HEADER.match(line)
                if not match:
                    continue
                address = int(match.group(1), 16)
                size = int(match.group(2), 16)
                method, source_line = method_name(lines, index)
                name = "blutter_{}_{}_{:x}".format(base, method, address)
                if len(name) > 100:
                    suffix = "_{:x}".format(address)
                    name = name[: 100 - len(suffix)] + suffix
                if address in seen:
                    duplicates += 1
                    if seen[address][0] != size:
                        print(
                            "warning: duplicate address 0x{:x} has sizes 0x{:x} and 0x{:x}".format(
                                address, seen[address][0], size
                            ),
                            file=sys.stderr,
                        )
                    continue
                seen[address] = (size, name)
                rows.append((address, size, name, relative, source_line))
    rows.sort(key=lambda item: item[0])
    return rows, duplicates


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("blutter_root", type=Path, help="Blutter asm root, e.g. dart-recovered/asm/simaster_ugm")
    parser.add_argument("output", type=Path, help="output TSV path")
    args = parser.parse_args()

    root = args.blutter_root.resolve()
    if not root.is_dir():
        parser.error("not a directory: {}".format(root))
    rows, duplicates = collect(root)
    if not rows:
        parser.error("no Blutter function headers found under {}".format(root))

    args.output.parent.mkdir(parents=True, exist_ok=True)
    with args.output.open("w", encoding="utf-8", newline="\n") as handle:
        handle.write("address\tsize\tname\tsource_file\tsource_line\n")
        for address, size, name, relative, source_line in rows:
            handle.write(
                "0x{:x}\t0x{:x}\t{}\t{}\t{}\n".format(
                    address, size, name, relative, source_line
                )
            )
    print(
        "wrote {} function headers ({} duplicate addresses skipped) to {}".format(
            len(rows), duplicates, args.output
        )
    )
    return 0


if __name__ == "__main__":
    sys.exit(main())
