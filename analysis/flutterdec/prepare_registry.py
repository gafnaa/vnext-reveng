#!/usr/bin/env python3
"""Authorize locally observed FullAOT features for a flutterdec run.

The upstream registry record for the target snapshot did not list six layout
features reported by the local adapter. flutterdec correctly refused that
identity instead of silently using the internal fallback. This helper adds the
observed features to a copy of the registry and recomputes the canonical
fingerprint. It does not edit the upstream checkout and does not install any
adapter.
"""

import argparse
import hashlib
import json
import sys
from pathlib import Path


def canonical_fingerprint(features):
    normalized = sorted({feature.lower() for feature in features})
    return hashlib.sha256("\n".join(normalized).encode("utf-8")).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("registry", type=Path, help="path to adapters/registry.json")
    parser.add_argument("snapshot_hash", help="32-character FullAOT snapshot hash")
    parser.add_argument(
        "features",
        nargs="+",
        help="additional layout features observed for this snapshot",
    )
    args = parser.parse_args()

    if len(args.snapshot_hash) != 32 or any(
        char not in "0123456789abcdef" for char in args.snapshot_hash
    ):
        parser.error("snapshot hash must be 32 lowercase hexadecimal characters")

    try:
        registry = json.loads(args.registry.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as exc:
        parser.error("cannot read registry: {}".format(exc))

    if registry.get("version") != 1 or not isinstance(registry.get("records"), list):
        parser.error("unsupported registry shape")

    record = next(
        (
            item
            for item in registry["records"]
            if item.get("snapshot_hash") == args.snapshot_hash
        ),
        None,
    )
    if record is None:
        parser.error("snapshot hash is not present in the registry")
    if record.get("snapshot_kind") != "full_aot":
        parser.error("snapshot record is not full_aot")

    old_features = list(record.get("features", []))
    merged = sorted(set(old_features).union(args.features))
    old_fingerprint = record.get("feature_fingerprint")
    new_fingerprint = canonical_fingerprint(merged)

    record["features"] = merged
    record["feature_fingerprint"] = new_fingerprint

    temporary = args.registry.with_name(args.registry.name + ".tmp")
    temporary.write_text(
        json.dumps(registry, indent=2, ensure_ascii=True) + "\n", encoding="utf-8"
    )
    temporary.replace(args.registry)

    added = [feature for feature in merged if feature not in old_features]
    print("patched: {}".format(args.registry))
    print("snapshot: {}".format(args.snapshot_hash))
    print("added: {}".format(", ".join(added) if added else "(none)"))
    print("features: {}".format(", ".join(merged)))
    print("fingerprint: {} -> {}".format(old_fingerprint, new_fingerprint))
    return 0


if __name__ == "__main__":
    sys.exit(main())
