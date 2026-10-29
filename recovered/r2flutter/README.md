# r2flutter excerpts — `simaster_ugm`

These files are verbatim pseudo-Dart excerpts from the 2026-10-29 `r2flutter`
focus runs. They are **not original source** and were not edited. The full runs
remain on the analysis host at
`/var/smster/work/r2flutter-2026-10-29/focus-*`.

| File | Function ID | Address | Omitted-path markers | Why selected |
|---|---:|---|---:|---|
| [`19817_method_AttedenceController_scanEntrant.dartpseudo`](19817_method_AttedenceController_scanEntrant.dartpseudo) | 19817 | `0xd4f850` | 0 | Attendance scan controller; calls `AttendanceNetworkImpl.scanEntrant` |
| [`19792_method_AttedenceController_getConfirmationQRStudent.dartpseudo`](19792_method_AttedenceController_getConfirmationQRStudent.dartpseudo) | 19792 | `0xd4e2f8` | 0 | QR confirmation controller; calls the network implementation |
| [`29005_method_AuthNetworkImpl_signIn.dartpseudo`](29005_method_AuthNetworkImpl_signIn.dartpseudo) | 29005 | `0xfda15c` | 0 | Sign-in network path; calls `BaseNetworking.post` |
| [`19836_method_BaseNetworkingV2__onRequestToken_241238401.dartpseudo`](19836_method_BaseNetworkingV2__onRequestToken_241238401.dartpseudo) | 19836 | `0xd52bbc` | 0 | Token refresh path; `getValidAccessToken`, `SharedPreferences`, `_handleLogout` |
| [`04568_method_OAuthWebviewService_exchangeCodeForToken.dartpseudo`](04568_method_OAuthWebviewService_exchangeCodeForToken.dartpseudo) | 4568 | `0x8e3834` | 1 | OAuth token exchange; references `configOauth`, Firebase token, device id |
| [`03933_method_F_get_configOauth.dartpseudo`](03933_method_F_get_configOauth.dartpseudo) | 3933 | `0x8bff94` | 0 | Flavor-dependent OAuth configuration map |

Function IDs are flutterdec's internal record IDs, not stable public symbols.
Names come from the AOT instruction table and are `exact` for the entries shown.
The private suffix `_<number>` is a library key, not part of the Dart source name.
`pool[N]` is a real ObjectPool index; the index space was validated against the
Blutter `pp.txt` dump in
[`../../reports/R2FLUTTER-BACKEND-EVALUATION.md`](../../reports/R2FLUTTER-BACKEND-EVALUATION.md).

The excerpts contain no string values, secrets, tokens, or PII. Values and
sensitive configuration remain in the private artifacts. Method names and
addresses are documented in the evaluation report; the reproducible setup is in
[`../../analysis/flutterdec/`](../../analysis/flutterdec/).
