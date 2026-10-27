# vnext-reveng

Analisis statis paket Android **Simaster UGM Student vNEXT** untuk memetakan arsitektur aplikasi, lapisan Flutter/Dart AOT, DEX, resource, route, serta jalur autentikasi dan otorisasi. Repositori ini menyimpan laporan yang dapat ditinjau, bukti provenance, dan alat reproduksi—bukan source code asli aplikasi.

| | |
|---|---|
| **Target** | `id.ac.ugm.student.vnext.simaster` |
| **Versi** | 1.11.1 (version code 65) |
| **Input utama** | `libapp.so` ARM64, SHA-256 `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290` |
| **Sifat analisis** | Statis; tidak ada eksekusi aplikasi, instrumentasi, atau traffic capture |
| **Status** | Baseline tersedia; cakupan per lapisan belum 100% |

> Seluruh route, endpoint, dan temuan di repositori ini berasal dari artefak statis kecuali dinyatakan lain. Tidak ada klaim perilaku server atau hasil eksploitasi tanpa bukti runtime.

## Arsitektur statis

![Arsitektur statis Simaster UGM Student vNEXT](docs/architecture.svg)

Diagram memetakan containment artefak, wrapper Android, Flutter/Dart AOT, model statis yang dipulihkan, dan batas layanan eksternal. Garis putus-putus menunjukkan hubungan konfigurasi yang belum diverifikasi runtime. Detail dan provenance ada di [laporan analisis](reports/ANALYSIS.md).

## Cakupan analisis

| Lapisan | Hasil saat ini | Status |
|---|---|---|
| Kontainer XAPK | 20 entri APK/split terinventaris | Inventaris tersedia |
| Manifest dan identitas | 1 paket; 50 komponen diperiksa | Statis |
| DEX | 5 DEX; 27.317 class; 170.057 method | Fallback JADX 14.749 file, 0 error CLI; crosswalk pending |
| Resource dan assets | 797 resource dari JADX auto/simple | Rekonsiliasi sumber belum selesai |
| Dart AOT / Blutter | 2.312 file assembly; 29.989 function header; 418 file aplikasi | Parsial; satu assertion |
| Ghidra app-level | 2.796/2.796 function start aplikasi terwakili; 2.763 pseudocode baru | Selesai untuk paket `simaster_ugm` |
| Flutterdec app-level | 2.628 record `simaster_ugm`; 2.796 header Blutter; selisih 168 belum direkonsiliasi | Parsial; 88 penanda jalur hilang |
| Ghidra full binary | 4.815 function; 3.862/29.989 header Blutter (12,88%) | Parsial; 50 jump table, VM snapshot, dan function non-aplikasi belum selesai |
| Feature map | 43 modul; 49 route; 36 caller/service | Statis; belum diuji runtime |
| Runtime | 0 sesi aplikasi; 0 request backend | Belum terverifikasi |

Peta cakupan per lapisan, rumus denominator, bukti, dan langkah berikutnya tersedia di [reports/PROGRESS.md](reports/PROGRESS.md). Target “100% inventaris statis” mengikuti [PRD](docs/PRD-REVERSE-ENGINEERING.md); angka tersebut tidak berarti source Dart asli pulih identik dari kompilasi AOT.

## Temuan keamanan

Semua temuan berstatus **kandidat** sampai divalidasi pada lingkungan uji yang berizin.

- **F-01** — model kredensial presensi yang diturunkan dari username, tanggal, dan salt statis; dampak bergantung pada penerimaan server.
- **F-02** — alur OAuth tanpa `state`/PKCE, client secret tertanam, redirect custom scheme, dan payload sensitif pada jalur error.
- **F-03–F-04** — penyimpanan token di SharedPreferences dan konfigurasi dev yang tersisa di binary.
- **F-05** — lookup akun yang bersifat laten dan session-gated; bukan pre-auth bypass.
- **F-06** — kandidat cross-role/BFLA dan identity tampering pada alur QR mahasiswa; belum ada bukti server menerima token atau mempercayai body.

Rincian, batas interpretasi, dan rencana uji ada di [SECURITY-FINDINGS.md](reports/SECURITY-FINDINGS.md), [OAUTH-DEEP-DIVE.md](reports/OAUTH-DEEP-DIVE.md), dan [API-AUTH-DEEP-DIVE.md](reports/API-AUTH-DEEP-DIVE.md). Jangan menguji production; validasi berikutnya memerlukan staging, akun sintetis, dan audit log.

## Laporan

### Analisis inti

- [Hasil static reverse engineering](reports/ANALYSIS.md) — identitas paket, izin, konfigurasi, metode, dan batasan.
- [Feature map](reports/FEATURE-MAP.md) — route, middleware sesi, modul, dan caller/service statis.
- [Inventaris dan mode decompile DEX](reports/DEX-DECOMPILATION.md) — hitungan per DEX, perbandingan JADX auto/simple/fallback, dan gap crosswalk.
- [Analisis Ghidra](reports/GHIDRA-ANALYSIS.md) — metode seeding, alamat, fungsi prioritas, dan keterbatasan.
- [Decompile AOT paket aplikasi](reports/GHIDRA-APP-DECOMPILE.md) — cakupan function start `simaster_ugm` dan audit full binary.
- [Decompile Flutterdec paket aplikasi](reports/FLUTTERDEC-APP-DECOMPILE.md) — pipeline sekunder, 2.628 record pseudo-Dart, kualitas, dan batasnya.
- [Batch decompile Ghidra](reports/GHIDRA-FULL-DECOMPILE.md) — hasil baseline, caveat control-flow, dan lokasi output lokal.
- [Pseudocode AOT terpilih](reports/GHIDRA-AOT-SELECTED.md) — fungsi prioritas yang didecompile dengan Ghidra.

### Keamanan

- [Temuan keamanan statis](reports/SECURITY-FINDINGS.md) — ringkasan F-01–F-06 dan batas bukti.
- [OAuth deep dive](reports/OAUTH-DEEP-DIVE.md) — `state`, PKCE, redirect, token exchange, dan penyimpanan token.
- [Rencana uji OAuth staging](reports/OAUTH-STAGING-TEST-PLAN.md) — matriks uji, evidence, kriteria pass/fail, dan stop conditions.
- [API authorization deep dive](reports/API-AUTH-DEEP-DIVE.md) — reachability, envelope, dan kandidat F-05/F-06.
- [Rencana uji API staging](reports/API-AUTH-STAGING-TEST-PLAN.md) — matriks peran/token, identity tampering, replay, dan evidence.

### Artefak dan alat

- [`analysis/ghidra/`](analysis/ghidra/) — script seed, decompile batch, dan langkah reproduksi.
- [`analysis/flutterdec/`](analysis/flutterdec/) — pipeline sekunder, patch registry lokal, dan bridge Blutter.
- [`recovered/`](recovered/) — rekonstruksi dan wrapper yang dapat ditinjau; bukan source asli.
- [`reports/artifact-manifest.json`](reports/artifact-manifest.json) — hash, inventaris, dan metadata alat.
- [`analysis-results.zip`](analysis-results.zip) — output Blutter/JADX tersanitasi.
- [`analysis-results-jadx-fallback.zip`](analysis-results-jadx-fallback.zip) — output JADX fallback.

APK/XAPK mentah, DEX, library `.so`, dan database project Ghidra tidak disertakan.

## Reproduksi

Analisis yang tercatat memakai JADX 1.5.6, Blutter pada commit yang ditautkan di manifest, Ghidra 12.1.4, dan flutterdec `ccf7dfa` untuk pipeline sekunder. Sebelum membandingkan hasil, cocokkan SHA-256 input dengan [artifact manifest](reports/artifact-manifest.json). Instruksi Ghidra tersedia di [`analysis/ghidra/README.md`](analysis/ghidra/README.md); pipeline flutterdec ada di [`analysis/flutterdec/README.md`](analysis/flutterdec/README.md).

## Batas interpretasi

- JADX menghasilkan output parsial: 164 error pada mode auto dan 67 error pada mode simple.
- Blutter menyelesaikan dump utama tetapi berhenti pada satu assertion.
- Ghidra memerlukan seed alamat dari output Blutter; jumlah function yang ditemukan bukan bukti seluruh AOT telah dipulihkan.
- Flutterdec menghasilkan pseudo-Dart dengan nama heuristic dan object-pool index ordinal; 2.628 record yang dipilih belum direkonsiliasi dengan 2.796 header Blutter aplikasi.
- Kompilasi Flutter AOT menghilangkan komentar, nama lokal, dan sebagian struktur tipe Dart. Pseudocode bukan source asli.
- Route, endpoint, izin, dan descriptor API adalah temuan statis. Tanpa eksekusi yang kompatibel, perilaku layar dan backend tetap belum diketahui.
- Nilai token, API key, dan kredensial pada hasil alat harus disamarkan sebelum dipublikasikan.
