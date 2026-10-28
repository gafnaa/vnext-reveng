#!/usr/bin/env python3
"""Give Blutter top-level members a synthetic class owner for flutterdec.

Blutter renders members that do not belong to a Dart class as a block headed
by ``class :: {``. The block has no class identity, so flutterdec's adapter
cannot attach those functions to a library and drops them from an app-scoped
run. This helper copies a Blutter dump and rewrites each ``class :: {`` header
to a synthetic, file-scoped class name.

The synthetic owner is an analysis workaround, not a recovered Dart class.
Names are derived only from the source path so the transformation is
deterministic. ``pp.txt`` and every other file are copied unchanged.
"""

import argparse
import json
import re
import shutil
import sys
from pathlib import Path

TOP_LEVEL_HEADER = "class :: {"
SAFE = re.compile(r"[^A-Za-z0-9_]+")


def synthetic_name(relative_path, occurrence, used):
    """Return a deterministic class name that is unique in this dump."""
    stem = relative_path.with_suffix("").as_posix()
    stem = SAFE.sub("_", stem).strip("_")
    counter = occurrence + 1
    while True:
        if counter == 1:
            candidate = "__TopLevel_{}__".format(stem)
        else:
            candidate = "__TopLevel_{}__{}__".format(stem, counter)
        if candidate not in used:
            used.add(candidate)
            return candidate
        counter += 1


def rewrite_file(path, relative_path, used):
    text = path.read_text(encoding="utf-8")
    count = text.count(TOP_LEVEL_HEADER)
    if not count:
        return []
    replacements = []
    for occurrence in range(count):
        name = synthetic_name(relative_path, occurrence, used)
        text = text.replace(TOP_LEVEL_HEADER, "class {} {{".format(name), 1)
        replacements.append(name)
    path.write_text(text, encoding="utf-8")
    return replacements


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source_dump", type=Path, help="existing dump with asm/ and pp.txt")
    parser.add_argument("output_dump", type=Path, help="new directory to write the copy into")
    parser.add_argument(
        "--package",
        default="simaster_ugm",
        help="subdirectory under asm/ to rewrite (default: simaster_ugm)",
    )
    parser.add_argument(
        "--manifest",
        type=Path,
        help="optional path for a JSON record of every synthetic class name",
    )
    args = parser.parse_args()

    source = args.source_dump.resolve()
    output = args.output_dump.resolve()
    if not (source / "asm").is_dir() or not (source / "pp.txt").is_file():
        parser.error("source dump must contain asm/ and pp.txt: {}".format(source))
    package_root = source / "asm" / args.package
    if not package_root.is_dir():
        parser.error("package directory not found: {}".format(package_root))
    if output.exists():
        parser.error("output directory already exists: {}".format(output))
    try:
        output.relative_to(source)
    except ValueError:
        pass
    else:
        parser.error("output directory must be outside the source dump")

    shutil.copytree(str(source), str(output))

    used = set()
    rewritten = []
    classes = 0
    files_scanned = 0
    for path in sorted((output / "asm" / args.package).rglob("*.dart")):
        files_scanned += 1
        relative = path.relative_to(output / "asm")
        replacements = rewrite_file(path, relative, used)
        if replacements:
            rewritten.append(str(relative))
            classes += len(replacements)
            for name in replacements:
                print("{}: {}".format(relative, name))

    summary = {
        "schema": "blutter-top-level-augmentation/v1",
        "source_dump": str(source),
        "output_dump": str(output),
        "package": args.package,
        "files_scanned": files_scanned,
        "files_rewritten": len(rewritten),
        "classes_renamed": classes,
        "synthetic_class_prefix": "__TopLevel_",
        "note": (
            "Synthetic owners only let flutterdec attach Blutter top-level "
            "members to a library. They are not recovered Dart classes."
        ),
        "rewritten_files": rewritten,
    }
    if args.manifest:
        manifest = args.manifest.resolve()
        manifest.parent.mkdir(parents=True, exist_ok=True)
        manifest.write_text(
            json.dumps(summary, indent=2, ensure_ascii=True) + "\n", encoding="utf-8"
        )

    print(
        "copied {} -> {}; rewrote {} of {} files ({} top-level blocks)".format(
            source, output, len(rewritten), files_scanned, classes
        )
    )
    if not classes:
        print("warning: no 'class :: {' headers were found", file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
