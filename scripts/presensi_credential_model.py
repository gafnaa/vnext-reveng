#!/usr/bin/env python3
"""Offline model of the Simaster presensi password derivation.

This script is a static-analysis artifact. It does not contain network code and
must not be used against production. The model is reconstructed from the ARM64
Flutter AOT dump of ``libapp.so`` version 1.11.1; see
``reports/SECURITY-FINDINGS.md`` for evidence and limitations.

Observed construction (``AttendanceNetworkImpl::scanEntrant`` and ``_enc``):

    plaintext = "*_" + username + SALT + "YYYY-MM-DD" + "_#"
    base64    = Base64(UTF-8(plaintext))
    transformed = base64 with "+" -> ".", "/" -> "_", "=" -> "-"
    candidate = transformed[80:] + transformed[0:52]
              + transformed[26:86] + transformed[43:132]
              + transformed[66:160]

The fixed substring end offsets require the transformed base64 string to be at
least 160 characters. With the 47-character salt and a 10-character date this
implies a username of at least 57 characters. Most UGM usernames are shorter,
so the default strict mode intentionally fails for them; this is a finding,
not a bug in the model. ``--allow-short`` clamps the ranges and is only a
demonstration of the observed transform.
"""

import argparse
import base64
import json
import sys
from datetime import date, datetime

SALT = "_Ini_Adalah_Password_#_Login_*_JWT_Username_Ku_"
PREFIX = "*_"
SUFFIX = "_#"

# (start, end) in the order used by the decompiled code. ``None`` means "to the
# end of the string". The order of concatenation is the reverse of this list:
# p5 + p4 + p3 + p2 + p1.
SUBSTRINGS = (
    ("p1_66_160", 66, 160),
    ("p2_43_132", 43, 132),
    ("p3_26_86", 26, 86),
    ("p4_0_52", 0, 52),
    ("p5_80_end", 80, None),
)

WARNING = (
    "Offline static-analysis model only. Do not send the derived value to "
    "production or to any system you are not authorized to test."
)


def build_plaintext(username, day):
    """Return the exact plaintext template used by the client."""
    return PREFIX + username + SALT + day + SUFFIX


def transform_base64(plaintext, allow_short):
    """Apply the observed Base64 replacement and substring/reorder steps."""
    standard = base64.b64encode(plaintext.encode("utf-8")).decode("ascii")
    transformed = (
        standard.replace("+", ".").replace("/", "_").replace("=", "-")
    )

    parts = {}
    for name, start, end in SUBSTRINGS:
        if end is None:
            end = len(transformed)
        if start > len(transformed):
            if not allow_short:
                raise ValueError(
                    "observed substring({}, {}) starts past the transformed "
                    "base64 length {}; the input is too short for the "
                    "decompiled code".format(start, end, len(transformed))
                )
            part = ""
        else:
            if end > len(transformed) and not allow_short:
                raise ValueError(
                    "observed substring({}, {}) exceeds the transformed "
                    "base64 length {}; the input is too short for the "
                    "decompiled code (use --allow-short only for a "
                    "demonstration)".format(start, end, len(transformed))
                )
            part = transformed[start:min(end, len(transformed))]
        parts[name] = part

    candidate = (
        parts["p5_80_end"]
        + parts["p4_0_52"]
        + parts["p3_26_86"]
        + parts["p2_43_132"]
        + parts["p1_66_160"]
    )
    return standard, transformed, parts, candidate


def constraint_report(plaintext, standard):
    """Describe the fixed-offset length requirement and whether it is met."""
    minimum_base64 = 160
    minimum_plaintext = 118
    fixed_plaintext = len(PREFIX) + len(SALT) + 10 + len(SUFFIX)
    minimum_username = minimum_plaintext - fixed_plaintext
    return {
        "minimum_base64_length": minimum_base64,
        "minimum_plaintext_bytes": minimum_plaintext,
        "minimum_username_chars": minimum_username,
        "minimum_username_chars_assumption": (
            "ASCII username; non-ASCII characters increase the UTF-8 byte "
            "length and can satisfy the constraint with fewer characters"
        ),
        "actual_plaintext_bytes": len(plaintext.encode("utf-8")),
        "actual_base64_length": len(standard),
        "satisfied": len(standard) >= minimum_base64,
        "shortfall_base64_chars": max(0, minimum_base64 - len(standard)),
        "note": (
            "The fixed offsets (66,160), (43,132), (26,86), (0,52), and "
            "(80,end) require a base64 string of at least 160 characters. "
            "For a short username the decompiled code would raise a "
            "RangeError before sending the request."
        ),
    }


def make_result(username, day, allow_short):
    plaintext = build_plaintext(username, day)
    standard, transformed, parts, candidate = transform_base64(
        plaintext, allow_short
    )
    constraint = constraint_report(plaintext, standard)
    mode = "lenient-demonstration" if allow_short else "strict"
    return {
        "mode": mode,
        "username": username,
        "date": day,
        "salt_length": len(SALT),
        "plaintext_length": len(plaintext.encode("utf-8")),
        "plaintext": plaintext,
        "base64_standard": standard,
        "base64_transformed": transformed,
        "parts": parts,
        "candidate": candidate,
        "candidate_length": len(candidate),
        "observed_constraint": constraint,
        "warning": WARNING,
        "limitations": [
            "Static reconstruction; not validated against a server.",
            "The order p5+p4+p3+p2+p1 is inferred from the prepend-style "
            "String.+ sequence at 0xd51fc4-0xd5203c and is consistent with "
            "the operand order of _StringBase::+ in other decompiled modules.",
            "The decompiled substring end offsets are fixed; the production "
            "username length may differ from the sample used here.",
            "The server may apply additional checks not visible in the APK.",
        ],
    }


def print_human(result):
    constraint = result["observed_constraint"]
    print("mode: {}".format(result["mode"]))
    print("username: {}".format(result["username"]))
    print("date: {}".format(result["date"]))
    print("plaintext length: {} bytes".format(result["plaintext_length"]))
    print("base64 length: {}".format(constraint["actual_base64_length"]))
    print("observed minimum base64 length: {}".format(
        constraint["minimum_base64_length"]))
    print("observed minimum username length: {} chars".format(
        constraint["minimum_username_chars"]))
    print("constraint satisfied: {}".format(constraint["satisfied"]))
    if not constraint["satisfied"]:
        print("shortfall: {} base64 chars".format(
            constraint["shortfall_base64_chars"]))
    print("")
    print("plaintext:")
    print(result["plaintext"])
    print("")
    print("base64 (standard):")
    print(result["base64_standard"])
    print("")
    print("transformed base64:")
    print(result["base64_transformed"])
    print("")
    for name, _, _ in SUBSTRINGS:
        print("{} ({} chars):".format(name, len(result["parts"][name])))
        print(result["parts"][name])
        print("")
    print("candidate ({} chars):".format(result["candidate_length"]))
    print(result["candidate"])
    print("")
    print("WARNING: {}".format(result["warning"]))


def run_selftest():
    """Exercise the strict path with a synthetic username long enough for it."""
    username = "a" * 60
    day = "2026-10-27"
    result = make_result(username, day, allow_short=False)
    assert result["observed_constraint"]["satisfied"] is True
    assert len(result["base64_standard"]) >= 160
    assert result["candidate_length"] == (
        len(result["parts"]["p5_80_end"])
        + len(result["parts"]["p4_0_52"])
        + len(result["parts"]["p3_26_86"])
        + len(result["parts"]["p2_43_132"])
        + len(result["parts"]["p1_66_160"])
    )
    assert result["candidate"].startswith(result["parts"]["p5_80_end"])
    print("selftest: ok (strict transform with a 60-character username)")
    return 0


def parse_args(argv):
    parser = argparse.ArgumentParser(
        description=(
            "Offline model of the Simaster presensi password derivation. "
            "No network access is performed."
        )
    )
    parser.add_argument("--username", help="username to model")
    parser.add_argument(
        "--date",
        default=date.today().isoformat(),
        help="date in YYYY-MM-DD (default: local today)",
    )
    parser.add_argument(
        "--allow-short",
        action="store_true",
        help=(
            "clamp substring ends for a lenient demonstration; the result is "
            "not the observed code path for short usernames"
        ),
    )
    parser.add_argument(
        "--json",
        action="store_true",
        help="emit JSON instead of a human-readable report",
    )
    parser.add_argument(
        "--selftest",
        action="store_true",
        help="run a synthetic strict-path self-test and exit",
    )
    return parser.parse_args(argv)


def main(argv=None):
    args = parse_args(sys.argv[1:] if argv is None else argv)
    if args.selftest:
        return run_selftest()
    if not args.username:
        print("error: --username is required (or use --selftest)", file=sys.stderr)
        return 2
    try:
        datetime.strptime(args.date, "%Y-%m-%d")
    except ValueError:
        print("error: --date must be YYYY-MM-DD", file=sys.stderr)
        return 2

    allow_short = bool(args.allow_short)
    try:
        result = make_result(args.username, args.date, allow_short)
    except ValueError as exc:
        print("error: {}".format(exc), file=sys.stderr)
        print(
            "hint: rerun with --allow-short for a lenient demonstration, or "
            "use a username of at least 57 characters to satisfy the observed "
            "offsets.",
            file=sys.stderr,
        )
        return 2

    if args.json:
        print(json.dumps(result, indent=2, sort_keys=False))
    else:
        print_human(result)
    return 0


if __name__ == "__main__":
    sys.exit(main())
