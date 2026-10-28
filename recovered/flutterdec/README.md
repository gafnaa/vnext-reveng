# Flutterdec excerpts — `simaster_ugm`

These files are verbatim pseudo-Dart excerpts from the canonical 2026-10-27
flutterdec run and the augmented 2026-10-28 run. They are **not original source**
and were not edited. The full runs remain on the analysis host at
`/var/smster/work/flutterdec-2026-10-27/app-simaster_ugm/` and
`/var/smster/work/flutterdec-2026-10-28/app-simaster_ugm-toplevel/`.

| File | Function ID | Omitted-path markers | Why selected |
|---|---:|---:|---|
| [`20785_scanEntrant.dartpseudo`](simaster_ugm/20785_scanEntrant.dartpseudo) | 20785 | 88 | Attendance scan; calls `baseUrl`, `post`, and the named scan converter |
| [`20810____ScanEntrantParamImplToJson.dartpseudo`](simaster_ugm/20810____ScanEntrantParamImplToJson.dartpseudo) | 20810 | 0 | Top-level converter; confirms the eight scan body keys |
| [`20890_exchangeCodeForToken.dartpseudo`](simaster_ugm/20890_exchangeCodeForToken.dartpseudo) | 20890 | 141 | Token exchange; too incomplete for payload claims |
| [`20909__launchOAuth.dartpseudo`](simaster_ugm/20909__launchOAuth.dartpseudo) | 20909 | 0 | OAuth launch wrapper; calls `configOauth` |
| [`20916__handleRedirectUri.dartpseudo`](simaster_ugm/20916__handleRedirectUri.dartpseudo) | 20916 | 9 | OAuth redirect handler; calls `configOauth` |
| [`23360_configOauth.dartpseudo`](simaster_ugm/23360_configOauth.dartpseudo) | 23360 | 0 | Flavor-dependent OAuth configuration |
| [`23478_BaseNetworking__internal.dartpseudo`](simaster_ugm/23478_BaseNetworking__internal.dartpseudo) | 23478 | 0 | Networking constructor; token/header logic not visible here |

Five excerpts are byte-identical between the two runs. `scanEntrant` differs
only because the augmented run names its call target
`___ScanEntrantParamImplToJson` instead of `fn_0xd51494`.
`_ScanEntrantParamImplToJson` exists only in the augmented run: it is a top-level
function that the canonical run could not attribute to a library.

Function IDs are flutterdec's internal record IDs, not stable public symbols.
Names are heuristic and come from the Blutter bridge. `poolOff[N]` references can
be mapped to `[pp+0xN]` in the local `pp.txt` for this snapshot, but that mapping
is inferred rather than a documented flutterdec contract. Values and sensitive
configuration remain in the private artifacts, not in these excerpts.

Method, quality counters, the 168-function reconciliation, and the limits of
this output are documented in
[`../../reports/FLUTTERDEC-APP-DECOMPILE.md`](../../reports/FLUTTERDEC-APP-DECOMPILE.md).
The reproducible pipeline is in
[`../../analysis/flutterdec/`](../../analysis/flutterdec/).
