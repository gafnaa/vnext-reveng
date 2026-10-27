# Flutterdec excerpts — `simaster_ugm`

These files are verbatim pseudo-Dart excerpts from the 2026-10-27 flutterdec
run. They are **not original source** and were not edited. The full run remains
on the analysis host at
`/var/smster/work/flutterdec-2026-10-27/app-simaster_ugm/`.

| File | Function ID | Omitted-path markers | Why selected |
|---|---:|---:|---|
| [`20916__handleRedirectUri.dartpseudo`](simaster_ugm/20916__handleRedirectUri.dartpseudo) | 20916 | 9 | OAuth redirect handler; calls `configOauth` |
| [`20890_exchangeCodeForToken.dartpseudo`](simaster_ugm/20890_exchangeCodeForToken.dartpseudo) | 20890 | 141 | Token exchange; too incomplete for payload claims |
| [`20909__launchOAuth.dartpseudo`](simaster_ugm/20909__launchOAuth.dartpseudo) | 20909 | 0 | OAuth launch wrapper; calls `configOauth` |
| [`23360_configOauth.dartpseudo`](simaster_ugm/23360_configOauth.dartpseudo) | 23360 | 0 | Flavor-dependent OAuth configuration |
| [`20785_scanEntrant.dartpseudo`](simaster_ugm/20785_scanEntrant.dartpseudo) | 20785 | 88 | Attendance scan; calls `baseUrl` and `post` |
| [`23478_BaseNetworking__internal.dartpseudo`](simaster_ugm/23478_BaseNetworking__internal.dartpseudo) | 23478 | 0 | Networking constructor; token/header logic not visible here |

Function IDs are flutterdec's internal record IDs, not stable public symbols.
Names are heuristic and come from the Blutter bridge. Object-pool references are
ordinal and must not be treated as resolved string literals or addresses.

Method, quality counters, and the limits of this output are documented in
[`../../reports/FLUTTERDEC-APP-DECOMPILE.md`](../../reports/FLUTTERDEC-APP-DECOMPILE.md).
The reproducible pipeline is in
[`../../analysis/flutterdec/`](../../analysis/flutterdec/).
