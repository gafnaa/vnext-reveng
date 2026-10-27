#!/usr/bin/env python3
"""Create a deterministic ZIP from the reviewed documentation allowlist only."""

import hashlib
import sys
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
# reports/SECURITY-FINDINGS.md is intentionally not part of the shareable
# report bundle. It stays in the private repository pending disclosure review.
ALLOWLIST = [
    "README.md",
    "docs/PRD-REVERSE-ENGINEERING.md",
    "docs/architecture.svg",
    "reports/ANALYSIS.md",
    "reports/FEATURE-MAP.md",
    "reports/GHIDRA-ANALYSIS.md",
    "reports/GHIDRA-AOT-SELECTED.md",
    "reports/GHIDRA-FULL-DECOMPILE.md",
    "reports/PROGRESS.md",
    "reports/DEX-DECOMPILATION.md",
]


def main():
    if len(sys.argv) != 2:
        print("usage: package_reports.py OUTPUT.zip", file=sys.stderr)
        return 2
    output = Path(sys.argv[1])
    if not output.is_absolute():
        output = ROOT / output
    output = output.resolve()
    try:
        output.relative_to(ROOT)
    except ValueError:
        print("output must be inside the workspace", file=sys.stderr)
        return 2

    missing = [rel for rel in ALLOWLIST if not (ROOT / rel).is_file()]
    if missing:
        print("allowlisted file missing: " + ", ".join(missing), file=sys.stderr)
        return 1

    output.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(str(output), "w", compression=zipfile.ZIP_DEFLATED) as archive:
        for rel in ALLOWLIST:
            info = zipfile.ZipInfo(rel, date_time=(2020, 1, 1, 0, 0, 0))
            info.compress_type = zipfile.ZIP_DEFLATED
            info.external_attr = 0o100644 << 16
            archive.writestr(info, (ROOT / rel).read_bytes())

    digest = hashlib.sha256(output.read_bytes()).hexdigest()
    checksum = output.with_suffix(output.suffix + ".sha256")
    checksum.write_text("{}  {}\n".format(digest, output.name), encoding="ascii")
    print("Created {} ({} bytes)".format(output.relative_to(ROOT), output.stat().st_size))
    print("SHA-256 {}".format(digest))
    return 0


if __name__ == "__main__":
    sys.exit(main())
