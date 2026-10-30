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
    "docs/analysis-map.svg",
    "reports/ANALYSIS.md",
    "reports/FEATURE-MAP.md",
    "reports/API-ENDPOINT-INVENTORY.md",
    "reports/GHIDRA-ANALYSIS.md",
    "reports/GHIDRA-AOT-SELECTED.md",
    "reports/GHIDRA-APP-DECOMPILE.md",
    "reports/GHIDRA-FULL-DECOMPILE.md",
    "reports/GHIDRA-FULL-TRIAGE.md",
    "reports/PROGRESS.md",
    "reports/DEX-DECOMPILATION.md",
    "reports/FLUTTERDEC-APP-DECOMPILE.md",
    "reports/R2FLUTTER-BACKEND-EVALUATION.md",
    "reports/flutterdec-quality.json",
    "analysis/flutterdec/README.md",
    "analysis/flutterdec/prepare_registry.py",
    "analysis/flutterdec/augment_top_level.py",
    "analysis/flutterdec/blutter_bridge.sh",
    "analysis/flutterdec/run_app.sh",
    "analysis/ghidra/triage_full_binary.py",
    "recovered/flutterdec/README.md",
    "recovered/flutterdec/simaster_ugm/20785_scanEntrant.dartpseudo",
    "recovered/flutterdec/simaster_ugm/20810____ScanEntrantParamImplToJson.dartpseudo",
    "recovered/flutterdec/simaster_ugm/20916__handleRedirectUri.dartpseudo",
    "recovered/flutterdec/simaster_ugm/20890_exchangeCodeForToken.dartpseudo",
    "recovered/flutterdec/simaster_ugm/20909__launchOAuth.dartpseudo",
    "recovered/flutterdec/simaster_ugm/23360_configOauth.dartpseudo",
    "recovered/flutterdec/simaster_ugm/23478_BaseNetworking__internal.dartpseudo",
    "recovered/r2flutter/README.md",
    "recovered/r2flutter/03933_method_F_get_configOauth.dartpseudo",
    "recovered/r2flutter/04568_method_OAuthWebviewService_exchangeCodeForToken.dartpseudo",
    "recovered/r2flutter/19792_method_AttedenceController_getConfirmationQRStudent.dartpseudo",
    "recovered/r2flutter/19817_method_AttedenceController_scanEntrant.dartpseudo",
    "recovered/r2flutter/19836_method_BaseNetworkingV2__onRequestToken_241238401.dartpseudo",
    "recovered/r2flutter/29005_method_AuthNetworkImpl_signIn.dartpseudo",
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
