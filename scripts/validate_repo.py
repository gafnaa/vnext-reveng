#!/usr/bin/env python3
"""Validate the reviewable, sanitized documentation tree without external packages."""

import json
import re
import subprocess
import sys
import xml.etree.ElementTree as ET
from pathlib import Path
from urllib.parse import unquote, urlsplit

ROOT = Path(__file__).resolve().parent.parent
FORBIDDEN_SUFFIXES = {
    ".apk", ".xapk", ".dex", ".so", ".aab", ".jar", ".keystore", ".jks",
    ".pem", ".p12", ".pfx",
}
TEXT_SUFFIXES = {".md", ".json", ".svg", ".java", ".xml", ".yaml", ".yml", ".txt"}
SECRET_PATTERNS = [
    ("private key", re.compile(r"-----BEGIN (?:RSA |EC |OPENSSH )?PRIVATE KEY-----")),
    ("Google API key", re.compile(r"\bAIza[0-9A-Za-z_-]{35}\b")),
    ("bearer token", re.compile(r"(?i)\bBearer\s+[A-Za-z0-9._~+/=-]{20,}")),
    ("JWT-shaped value", re.compile(r"\beyJ[A-Za-z0-9_-]{10,}\.[A-Za-z0-9_-]{10,}\.[A-Za-z0-9_-]{10,}\b")),
    (
        "credential assignment",
        re.compile(
            r"(?i)\b(?:api[_-]?key|access[_-]?token|refresh[_-]?token|client[_-]?secret)"
            r"\b[\"']?\s*[:=]\s*[\"']?[A-Za-z0-9._~+/=-]{20,}"
        ),
    ),
]
MARKDOWN_LINK = re.compile(r"(?<!!)\[[^\]]*\]\(([^)]+)\)")
REQUIRED_FILES = [
    "README.md",
    "docs/PRD-REVERSE-ENGINEERING.md",
    "docs/architecture.svg",
    "reports/PROGRESS.md",
    "reports/xapk-inventory.json",
    "reports/artifact-manifest.json",
]


def tracked_paths():
    raw = subprocess.check_output(["git", "ls-files", "-z"], cwd=str(ROOT))
    return [ROOT / item.decode("utf-8") for item in raw.split(b"\0") if item]


def local_links(path, content, errors):
    for match in MARKDOWN_LINK.finditer(content):
        destination = match.group(1).strip().split()[0].strip("<>")
        parsed = urlsplit(destination)
        if parsed.scheme or destination.startswith("//") or not parsed.path:
            continue
        target_path = Path(unquote(parsed.path))
        if target_path.is_absolute():
            continue
        target = (path.parent / target_path).resolve()
        try:
            target.relative_to(ROOT)
        except ValueError:
            errors.append("{}: link escapes repository: {}".format(path.relative_to(ROOT), destination))
            continue
        if not target.exists():
            errors.append("{}: broken local link: {}".format(path.relative_to(ROOT), destination))


def main():
    errors = []
    files = tracked_paths()
    for path in files:
        if path.suffix.lower() in FORBIDDEN_SUFFIXES:
            errors.append("forbidden proprietary/key file tracked: {}".format(path.relative_to(ROOT)))

    for rel in REQUIRED_FILES:
        if not (ROOT / rel).is_file():
            errors.append("required file missing: {}".format(rel))

    for path in files:
        if not path.is_file() or path.suffix.lower() not in TEXT_SUFFIXES:
            continue
        try:
            content = path.read_text(encoding="utf-8")
        except UnicodeDecodeError:
            errors.append("text file is not UTF-8: {}".format(path.relative_to(ROOT)))
            continue
        if path.suffix.lower() == ".json":
            try:
                json.loads(content)
            except json.JSONDecodeError as exc:
                errors.append("invalid JSON {}:{}:{}: {}".format(path.relative_to(ROOT), exc.lineno, exc.colno, exc.msg))
        if path.suffix.lower() == ".md":
            local_links(path, content, errors)
        if path.suffix.lower() != ".txt":
            for label, pattern in SECRET_PATTERNS:
                if pattern.search(content):
                    errors.append("{} pattern found in {}".format(label, path.relative_to(ROOT)))

    try:
        ET.parse(str(ROOT / "docs/architecture.svg"))
    except (ET.ParseError, OSError) as exc:
        errors.append("invalid architecture SVG: {}".format(exc))

    if errors:
        for error in errors:
            print("ERROR: " + error, file=sys.stderr)
        return 1
    print("Documentation, manifests, links, SVG, artifact allowlist, and targeted secret patterns are valid.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
