# Progress map — Simaster Student vNEXT

**Snapshot:** 2026-10-27  
**Target:** `id.ac.ugm.student.vnext.simaster` 1.11.1 (code 65)  
**Input utama:** `libapp.so` SHA-256 `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290`  
**Makna status:** progres di bawah adalah inventaris baseline yang diketahui, bukan ukuran pemulihan source asli.

## Ringkasan per lapisan

| Lapisan | Denominator / hasil saat ini | Status | Bukti dan gap |
|---|---:|---|---|
| Kontainer XAPK | 20 entri APK/split | Inventaris 20/20 | [`xapk-inventory.json`](xapk-inventory.json); belum ada daftar seluruh path internal tiap arsip di repo. |
| Identitas dan manifest | 1 paket; manifest memuat 50 komponen | Diperiksa statis | [`ANALYSIS.md`](ANALYSIS.md), [`AndroidManifest.xml`](AndroidManifest.xml); bukan observasi runtime. |
| DEX | 5 file pada base APK; JADX memproses 10.477 unit | Parsial | JADX 1.5.6 menghasilkan 14.647 file Java dan 797 resource, dengan 164 error/exit 3. Denominator seluruh method dan error per unit belum dibuat. |
| Resource/assets | Inventaris split mencatat resource dan asset per paket; JADX menulis 797 resource | Parsial | Belum ada rekonsiliasi resource sumber terhadap hasil decompile; aset binary diklasifikasi per jenis belum lengkap. |
| Native | Split ARM64 mencatat 12 `.so`, termasuk `libapp.so` dan `libflutter.so` | Inventaris ABI tersedia | Belum ada laporan decompile/fungsi per setiap library. Fokus Ghidra saat ini pada `libapp.so`. |
| Dart AOT / Blutter | 2.312 file assembly; 418 file aplikasi | Parsial | Satu assertion pada `0xcab944`; denominator fungsi/range AOT belum dikonfirmasi secara independen. |
| Ghidra `libapp.so` | 2.052 function entries; 1 kandidat data dikecualikan; 2.051 kandidat code | Pseudocode 2.051/2.051; 2.001 tanpa marker control-flow terdeteksi, 50 partial-control-flow, 0 gagal | Database awal menemukan 0 fungsi. 50 indirect jump table belum pulih; object Dart VM snapshot 92.768 byte belum dipetakan. Output lokal: `/smster/work/ghidra/decompiled-all/SimasterAOT-2026-10-27-audited`. Lihat [`GHIDRA-FULL-DECOMPILE.md`](GHIDRA-FULL-DECOMPILE.md). |
| Modul aplikasi | 43 direktori modul teridentifikasi | Pemetaan nama tersedia | Belum ada pemetaan lengkap setiap class/function ke modul dan alur layar. |
| Route | 49 literal path dan 49 konstruksi `GetPage` | 49/49 tercatat | Binding `/oss_v2` belum dipasangkan; belum diuji runtime. |
| Middleware sesi | 18 nama pengecualian ditemukan | 18/18 nama tercatat | Interpretasi berasal dari list statis dan tidak menunjukkan route mana yang benar-benar tercapai. |
| Caller/API service | 36 caller/method/service triples, 29 label unik | 36/36 triples yang dipulihkan tercatat | Tidak membuktikan request terkirim. Path beberapa layanan dirakit saat runtime dan perlu ditelusuri. |
| Perilaku runtime | 0 sesi aplikasi; 0 request backend diamati | Belum diketahui | Emulator x86_64 tidak mendukung split ARM64 target dalam konfigurasi yang dicoba; lihat `ANALYSIS.md`. |

## Cara membaca cakupan

- `N/N tercatat` hanya mengukur unit dalam daftar yang telah diekstrak. Itu belum membuktikan tidak ada unit yang terlewat oleh ekstraktor.
- Persentase decompile DEX dan AOT belum ditampilkan karena denominator class/method dan rentang AOT belum dibekukan serta belum disejajarkan antaralat.
- Lima fungsi Ghidra dengan pseudocode adalah sampel prioritas, bukan klaim 5 dari total 2.052 sudah selesai; angka 2.052 adalah fungsi yang ditemukan setelah seeding.
- Target 100% yang diterima harus mengikuti kriteria dan status unit pada [PRD](../docs/PRD-REVERSE-ENGINEERING.md). Source Dart yang hilang akibat kompilasi AOT tetap menjadi batas teknis.

## Next actions

1. Ekstrak inventaris per file XAPK/APK termasuk path internal, ukuran, hash, ABI, DEX, resource, dan assets.
2. Hitung class/method per DEX dan cocokkan hasil JADX dengan error report sehingga 164 error memiliki dampak per unit.
3. Bangun inventaris resource yang membedakan XML/value, drawable, asset binary, dan file yang tidak dapat didekode.
4. Triase 50 indirect jump table Ghidra, lalu bandingkan seluruh output Blutter dengan code range executable, Function Manager, overlap, dan byte yang belum terklasifikasi.
5. Petakan symbol `_kDartVmSnapshotInstructions` dan library native relevan lain, atau dokumentasikan alasan tidak dianalisis.
6. Tambahkan provenance per temuan dan tandai status runtime hanya setelah ada eksekusi yang kompatibel dan berizin.

## Referensi baseline

- [Analisis umum](ANALYSIS.md)
- [Feature map](FEATURE-MAP.md)
- [Analisis Ghidra](GHIDRA-ANALYSIS.md)
- [Pseudocode Ghidra terpilih](GHIDRA-AOT-SELECTED.md)
- [Manifest artifact dan tool](artifact-manifest.json)
