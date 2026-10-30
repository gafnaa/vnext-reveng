#!/usr/bin/env python3
"""Compare the Ghidra function inventory against a full Blutter dump.

All addresses are normalised to file coordinates: the Ghidra project uses an
image base of 0x100000, so ``ghidra_address - 0x100000`` equals the Blutter and
ELF address of the same byte.

The script is read-only. It expects the local artefacts referenced by
``reports/GHIDRA-FULL-TRIAGE.md`` and writes a JSON summary to stdout or to
``--output``. It never decompiles, executes, or contacts anything.

Usage:

    python3 analysis/ghidra/triage_full_binary.py \
      --blutter-asm /tmp/blutter-top-level/asm \
      --inventory /smster/work/ghidra/function-inventory-app.tsv \
      --app-functions /smster/work/flutterdec-2026-10-28/blutter-app-functions.tsv \
      --r2flutter /smster/work/r2flutter-2026-10-29/i.json \
      --function-index /smster/work/ghidra/decompiled-all/SimasterAOT-2026-10-27-audited/function-index.tsv \
      --binary /smster/artifacts/native/libapp.so \
      --output /tmp/ghidra-full-triage.json
"""

import argparse
import bisect
import collections
import csv
import json
import os
import re
import struct
import sys

HEADER = re.compile(
    r"^\s*// \*\* addr: (0x[0-9a-fA-F]+), size: (0x[0-9a-fA-F]+)"
)
IMAGE_BASE = 0x100000
TEXT_START = 0x7C0000
TEXT_END = 0x13F0A80
VM_SNAPSHOT_START = 0x7C0000
VM_SNAPSHOT_END = 0x7D6A60
ISOLATE_START = 0x7D6A80
ISOLATE_END = 0x13F0A80
TRAMPOLINE_TARGETS = (0x13DE7A0, 0x13DE738)


def read_blutter_headers(root):
    """Return {file_address: size} for every Blutter ``// ** addr`` header.

    ``os.walk`` is used instead of ``glob`` so that headers inside dotted
    directories (for example ``asm/.dart_tool``) are included; those add two
    addresses to the 29.987 reachable through a non-hidden glob.
    """
    headers = {}
    for directory, _, filenames in os.walk(str(root)):
        for filename in sorted(filenames):
            if not filename.endswith(".dart"):
                continue
            path = os.path.join(directory, filename)
            with open(path, "r", encoding="utf-8", errors="replace") as handle:
                for line in handle:
                    match = HEADER.match(line)
                    if match:
                        headers.setdefault(
                            int(match.group(1), 16), int(match.group(2), 16)
                        )
    return headers


def read_inventory(path):
    """Return {file_address: row} from the Ghidra function inventory TSV."""
    rows = {}
    with open(path, "r", encoding="utf-8", newline="") as handle:
        for row in csv.DictReader(handle, delimiter="\t"):
            address = int(row["address"], 16) - IMAGE_BASE
            rows[address] = {
                "name": row["name"],
                "body_bytes": int(row["body_bytes"]),
                "body_ranges": int(row["body_ranges"]),
                "external": row["external"].strip().lower() == "true",
            }
    return rows


def read_app_functions(path):
    """Return {file_address: size} for the Blutter headers of the app package."""
    rows = {}
    with open(path, "r", encoding="utf-8", newline="") as handle:
        for row in csv.DictReader(handle, delimiter="\t"):
            rows[int(row["address"], 16)] = int(row["size"], 16)
    return rows


def read_r2flutter_names(path):
    """Return {file_address: name} from the r2flutter instruction table."""
    with open(path, "r", encoding="utf-8") as handle:
        payload = json.load(handle)
    return {entry["address"]: entry.get("name") for entry in payload["entries"]}


def read_function_index(path):
    """Return the status column of the Ghidra batch decompile index."""
    rows = {}
    with open(path, "r", encoding="utf-8", newline="") as handle:
        for row in csv.DictReader(handle, delimiter="\t"):
            rows[int(row["address"], 16) - IMAGE_BASE] = row["status"]
    return rows


def merge_ranges(intervals):
    merged = []
    for start, end in sorted(intervals):
        if merged and start <= merged[-1][1]:
            merged[-1][1] = max(merged[-1][1], end)
        else:
            merged.append([start, end])
    return merged


def covered_bytes(merged, start, end):
    total = 0
    for low, high in merged:
        total += max(0, min(high, end) - max(low, start))
    return total


def is_trampoline(data, address):
    """Decode the ``movz``/``movk``/``b`` triple used by AOT allocation stubs."""
    if len(data) < address + 12:
        return None
    word0, word1, word2 = struct.unpack_from("<III", data, address)
    if (word0 & 0x7F800000) != 0x52800000:
        return None
    if (word1 & 0x7F800000) != 0x72800000:
        return None
    if (word2 & 0xFC000000) != 0x14000000:
        return None
    immediate = ((word0 >> 5) & 0xFFFF) | (((word1 >> 5) & 0xFFFF) << 16)
    offset = word2 & 0x03FFFFFF
    if offset & (1 << 25):
        offset -= 1 << 26
    return immediate, address + (offset << 2)


def owner_of(headers_sorted, headers, address):
    """Return the Blutter header whose body contains ``address``, if any."""
    index = bisect.bisect_right(headers_sorted, address) - 1
    if index < 0:
        return None
    start = headers_sorted[index]
    return start if address < start + headers[start] else None


def previous_end(headers_sorted, headers, address):
    index = bisect.bisect_right(headers_sorted, address) - 1
    if index < 0:
        return None
    start = headers_sorted[index]
    return start + headers[start]


def body_size_distribution(sizes):
    buckets = collections.Counter()
    for size in sizes:
        if size <= 16:
            buckets["<=16"] += 1
        elif size <= 64:
            buckets["17-64"] += 1
        elif size <= 256:
            buckets["65-256"] += 1
        else:
            buckets[">256"] += 1
    return dict(buckets)


def triage(args):
    headers = read_blutter_headers(args.blutter_asm)
    inventory = read_inventory(args.inventory)
    app = read_app_functions(args.app_functions)
    names = read_r2flutter_names(args.r2flutter)
    status = read_function_index(args.function_index)
    with open(args.binary, "rb") as handle:
        data = handle.read()

    headers_sorted = sorted(headers)
    first_header = headers_sorted[0]
    last_header = headers_sorted[-1]

    matched = [address for address in headers if address in inventory]
    ghidra_only = sorted(address for address in inventory if address not in headers)
    blutter_only = sorted(address for address in headers if address not in inventory)

    in_gap = []
    inside_body = []
    before_first = []
    after_last = []
    for address in ghidra_only:
        size = inventory[address]["body_bytes"]
        if address < first_header:
            before_first.append(address)
            continue
        if address > last_header:
            after_last.append(address)
            continue
        if owner_of(headers_sorted, headers, address) is not None:
            inside_body.append(address)
            continue
        in_gap.append(address)

    gap_start = [
        address for address in in_gap
        if previous_end(headers_sorted, headers, address) == address
    ]

    prefix = collections.Counter()
    for address in ghidra_only:
        name = names.get(address)
        if name is None:
            prefix["unnamed"] += 1
        elif name.startswith("method."):
            prefix["method"] += 1
        elif name.startswith("stub."):
            prefix["stub"] += 1
        else:
            prefix["other"] += 1

    trampolines = []
    for address in ghidra_only:
        if inventory[address]["body_bytes"] != 12:
            continue
        decoded = is_trampoline(data, address)
        if decoded is not None:
            trampolines.append((address, decoded[0], decoded[1]))
    targets = collections.Counter(target for _, _, target in trampolines)
    immediates = [immediate for _, immediate, _ in trampolines]

    app_mismatch = []
    for address, size in sorted(app.items()):
        if address not in inventory:
            continue
        entry = inventory[address]
        if entry["body_bytes"] != size:
            app_mismatch.append((address, size, entry["body_bytes"],
                                 entry["body_ranges"]))

    delta24 = [row for row in app_mismatch
               if row[3] == 1 and row[1] - row[2] == 24]
    body24 = [row for row in app_mismatch
              if row[3] == 1 and row[2] == 24]

    # r2flutter view of the same boundary: app headers that are not instruction
    # table entries themselves but start 0x18 bytes after one.
    delta24_r2 = sorted(
        address for address in app
        if address not in names and (address - 0x18) in names
    )
    delta24_previous = [
        row for row in delta24 if (row[0] - 0x18) in names
    ]
    delta24_targets = [
        row[0] + row[2] for row in delta24 if (row[0] + row[2]) in inventory
    ]
    delta24_target_sizes = collections.Counter(
        inventory[target]["body_bytes"] for target in delta24_targets
    )
    body24_set = {row[0] for row in body24}

    partial = sorted(address for address, value in status.items()
                     if value == "partial-control-flow")

    merged = merge_ranges(
        (address, address + entry["body_bytes"])
        for address, entry in inventory.items()
        if entry["body_bytes"] > 0
    )

    # Reconcile the bytes of the app-package span that no Ghidra body covers.
    app_span = merge_ranges(
        (address, address + size) for address, size in app.items()
    )
    app_span_bytes = sum(end - start for start, end in app_span)
    app_span_covered = sum(
        covered_bytes(merged, start, end) for start, end in app_span
    )
    odd_single = [
        row for row in app_mismatch
        if row[3] == 1 and row[2] != 24 and row[1] - row[2] == 24
        and (row[0] + row[2]) not in headers
    ]

    gaps = []
    for index in range(len(headers_sorted) - 1):
        start = headers_sorted[index] + headers[headers_sorted[index]]
        end = headers_sorted[index + 1]
        if end > start:
            gaps.append((start, end))

    return {
        "inputs": {
            "blutter_asm": os.path.abspath(args.blutter_asm),
            "inventory": os.path.abspath(args.inventory),
            "app_functions": os.path.abspath(args.app_functions),
            "r2flutter": os.path.abspath(args.r2flutter),
            "function_index": os.path.abspath(args.function_index),
            "binary": os.path.abspath(args.binary),
        },
        "totals": {
            "ghidra_functions": len(inventory),
            "blutter_headers": len(headers),
            "matched_starts": len(matched),
            "matched_percent": round(100.0 * len(matched) / len(headers), 2),
            "ghidra_only": len(ghidra_only),
            "blutter_only": len(blutter_only),
        },
        "ghidra_only": {
            "total": len(ghidra_only),
            "inside_inter_function_gap": len(in_gap),
            "at_gap_start": len(gap_start),
            "inside_blutter_body": len(inside_body),
            "inside_blutter_body_addresses": [
                {"address": hex(address),
                 "body_bytes": inventory[address]["body_bytes"],
                 "blutter_header": hex(owner_of(headers_sorted, headers, address))}
                for address in inside_body
            ],
            "before_first_blutter_header": [hex(address) for address in before_first],
            "after_last_blutter_header": [hex(address) for address in after_last],
            "after_last_all_typetest": all(
                "typetest" in (names.get(address) or "")
                for address in after_last
            ),
            "name_prefix": dict(prefix),
            "unnamed_addresses": [
                hex(address) for address in ghidra_only if address not in names
            ],
            "body_bytes_total": sum(
                inventory[address]["body_bytes"] for address in ghidra_only
            ),
            "body_size_buckets": body_size_distribution(
                inventory[address]["body_bytes"] for address in ghidra_only
            ),
        },
        "trampolines": {
            "body_12_total": sum(
                1 for address in ghidra_only
                if inventory[address]["body_bytes"] == 12
            ),
            "decoded_movz_movk_b": len(trampolines),
            "targets": {hex(target): count for target, count in targets.items()},
            "target_is_ghidra_function": {
                hex(target): target in inventory for target in targets
            },
            "target_is_blutter_header": {
                hex(target): target in headers for target in targets
            },
            "decoded_all_stub_allocate": all(
                (names.get(address) or "").startswith("stub.Allocate")
                for address, _, _ in trampolines
            ),
            "immediate_min": hex(min(immediates)) if immediates else None,
            "immediate_max": hex(max(immediates)) if immediates else None,
        },
        "app_body_size": {
            "functions_compared": len(app),
            "mismatch_total": len(app_mismatch),
            "ghidra_smaller": sum(1 for row in app_mismatch if row[2] < row[1]),
            "ghidra_larger": sum(1 for row in app_mismatch if row[2] > row[1]),
            "multi_range": sum(1 for row in app_mismatch if row[3] > 1),
            "single_range": sum(1 for row in app_mismatch if row[3] == 1),
            "multi_range_gap_bytes": sum(
                row[1] - row[2] for row in app_mismatch if row[3] > 1
            ),
            "delta_24": len(delta24),
            "delta_24_end_is_next_blutter_start": sum(
                1 for row in delta24 if (row[0] + row[2]) in headers
            ),
            "delta_24_end_is_ghidra_function": len(delta24_targets),
            "delta_24_end_body_sizes": {
                str(size): count
                for size, count in sorted(delta24_target_sizes.items())
            },
            "delta_24_previous_18_is_r2flutter_entry": len(delta24_previous),
            "delta_24_previous_18_is_dyn_thunk": sum(
                1 for row in delta24_previous
                if "dyn:" in (names.get(row[0] - 0x18) or "")
            ),
            "ghidra_body_24": len(body24),
            "body_24_all_targets_of_delta_24": body24_set <= set(delta24_targets),
            "body_24_targeted_count": len(body24_set & set(delta24_targets)),
            "r2flutter_plus_18_not_entry": len(delta24_r2),
            "delta_24_equals_r2flutter_plus_18": (
                sorted(row[0] for row in delta24) == delta24_r2
            ),
            "crosses_next_blutter_start": sum(
                1 for row in app_mismatch
                if bisect.bisect_right(headers_sorted, row[0]) < len(headers_sorted)
                and row[0] + row[2] > headers_sorted[
                    bisect.bisect_right(headers_sorted, row[0])
                ]
            ),
            "app_span_bytes": app_span_bytes,
            "app_span_covered": app_span_covered,
            "app_span_uncovered": app_span_bytes - app_span_covered,
            "app_span_uncovered_percent": round(
                100.0 * (app_span_bytes - app_span_covered) / app_span_bytes, 2
            ),
            "uncovered_from_multi_range": sum(
                row[1] - row[2] for row in app_mismatch if row[3] > 1
            ),
            "uncovered_from_body_24_tails": sum(
                row[1] - 24 for row in body24
            ),
            "uncovered_from_odd_single_range": sum(
                row[1] - row[2] for row in odd_single
            ),
            "odd_single_range_addresses": [hex(row[0]) for row in odd_single],
        },
        "partial_control_flow": {
            "total": len(partial),
            "in_app_package": sum(1 for address in partial if address in app),
            "with_blutter_header": sum(1 for address in partial if address in headers),
            "body_bytes_min": min(
                inventory[address]["body_bytes"] for address in partial
            ) if partial else None,
            "body_bytes_max": max(
                inventory[address]["body_bytes"] for address in partial
            ) if partial else None,
        },
        "coverage": {
            "text_bytes": TEXT_END - TEXT_START,
            "ghidra_body_bytes_in_text": sum(end - start for start, end in merged),
            "ghidra_body_percent": round(
                100.0 * sum(end - start for start, end in merged)
                / (TEXT_END - TEXT_START), 2
            ),
            "disjoint_body_ranges": len(merged),
            "vm_snapshot_bytes": VM_SNAPSHOT_END - VM_SNAPSHOT_START,
            "vm_snapshot_covered": covered_bytes(
                merged, VM_SNAPSHOT_START, VM_SNAPSHOT_END
            ),
            "isolate_bytes": ISOLATE_END - ISOLATE_START,
            "isolate_covered": covered_bytes(merged, ISOLATE_START, ISOLATE_END),
            "isolate_percent": round(
                100.0 * covered_bytes(merged, ISOLATE_START, ISOLATE_END)
                / (ISOLATE_END - ISOLATE_START), 2
            ),
        },
        "gaps": {
            "count": len(gaps),
            "bytes": sum(end - start for start, end in gaps),
            "median_bytes": sorted(end - start for start, end in gaps)[
                len(gaps) // 2
            ] if gaps else None,
            "containing_ghidra_only_function": len({
                address for address in ghidra_only
                if previous_end(headers_sorted, headers, address) is not None
                and any(start <= address < end for start, end in gaps)
            }),
            "bytes_covered_by_ghidra_only": sum(
                inventory[address]["body_bytes"] for address in in_gap
            ),
            "overlapping_header_pairs": sum(
                1 for index in range(len(headers_sorted) - 1)
                if headers_sorted[index] + headers[headers_sorted[index]]
                > headers_sorted[index + 1]
            ),
            "overlap_bytes": sum(
                headers_sorted[index] + headers[headers_sorted[index]]
                - headers_sorted[index + 1]
                for index in range(len(headers_sorted) - 1)
                if headers_sorted[index] + headers[headers_sorted[index]]
                > headers_sorted[index + 1]
            ),
        },
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--blutter-asm", required=True)
    parser.add_argument("--inventory", required=True)
    parser.add_argument("--app-functions", required=True)
    parser.add_argument("--r2flutter", required=True)
    parser.add_argument("--function-index", required=True)
    parser.add_argument("--binary", required=True)
    parser.add_argument("--output")
    args = parser.parse_args()

    summary = triage(args)
    text = json.dumps(summary, indent=2, sort_keys=True)
    if args.output:
        with open(args.output, "w", encoding="utf-8") as handle:
            handle.write(text + "\n")
        print("wrote {}".format(args.output), file=sys.stderr)
    else:
        print(text)
    return 0


if __name__ == "__main__":
    sys.exit(main())
