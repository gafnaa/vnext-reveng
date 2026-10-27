# PRD: Reverse Engineering Simaster Student vNEXT

**Status:** draf untuk implementasi  
**Pemilik:** gafnaa  
**Target:** `id.ac.ugm.student.vnext.simaster`  
**Baseline:** versi 1.11.1, version code 65  
**Repo kerja:** `gafnaa/simaster-ugm-student-vnext-re`

## 1. Ringkasan

Proyek ini mendokumentasikan dan menganalisis paket Android Simaster Student vNEXT yang diperoleh sebagai XAPK/split. Hasilnya harus dapat ditinjau ulang, memiliki jejak bukti, menunjukkan cakupan decompile secara terukur, dan membedakan fakta statis dari observasi runtime.

Target “100%” berarti **100% unit dalam inventaris artefak yang dibekukan untuk satu versi target sudah diperiksa dan memiliki status akhir serta bukti**. Target ini tidak menjanjikan source Dart asli pulih secara identik: kompilasi Flutter AOT membuang informasi source seperti komentar, nama lokal, dan sebagian struktur tipe.

## 2. Masalah yang diselesaikan

Saat ini hasil tersimpan, tetapi status kelengkapan sulit dipahami dari README. Beberapa hasil alat masih parsial, batas denominator belum seragam, dan pembaca harus membuka banyak laporan untuk memahami arsitektur atau gap. Tim membutuhkan satu definisi selesai, peta progres yang dapat diaudit, diagram arsitektur yang menunjuk sumber bukti, serta CI/CD yang menjaga dokumentasi dan mencegah artefak sensitif terpublikasi.

## 3. Tujuan dan bukan tujuan

### Tujuan

1. Menginventarisasi semua file dalam XAPK, setiap APK/split, DEX, resource, dan library native untuk versi target.
2. Menghasilkan decompile dan analisis statis terbaik yang tersedia untuk setiap unit, lalu mencatat cakupan, error, dan batas alat.
3. Menghubungkan modul, route, service/API statis, simbol AOT, rentang kode, dan hasil Ghidra dengan bukti yang dapat direproduksi.
4. Menampilkan progres, arsitektur, metode reproduksi, dan keterbatasan pada README serta laporan terpisah.
5. Menjalankan pemeriksaan otomatis pada perubahan dan hanya memublikasikan laporan yang sudah disanitasi.

### Bukan tujuan

- Mengklaim bahwa pseudocode hasil decompiler sama dengan source code asli.
- Mengubah, menandatangani ulang, memasang, atau menjalankan aplikasi sebagai bagian dari pipeline CI.
- Mengirim request ke backend atau mengakses akun pengguna.
- Mempublikasikan APK, DEX, `.so`, kredensial, token, atau database Ghidra yang memuat materi proprietary.
- Menyatakan fitur berjalan hanya berdasarkan nama route, string, izin, atau descriptor statis.

## 4. Pengguna dan kebutuhan

| Pengguna | Kebutuhan |
|---|---|
| Analis reverse engineering | Mengetahui unit mana yang sudah dianalisis, gap alat, dan alamat/bukti yang perlu dilanjutkan. |
| Reviewer | Memverifikasi kesimpulan dari manifest, hash, output alat, serta batasan tanpa bergantung pada klaim runtime. |
| Kontributor | Mengulang proses dengan versi alat dan input yang tercatat serta mengirim perubahan melalui PR. |

## 5. Definisi cakupan dan status

Setiap entri inventaris harus mempunyai ID stabil, sumber/offset atau path, hash bila relevan, alat dan versi, tautan bukti, serta tepat satu status:

- `complete`: diperiksa dan hasil yang tersedia dilampirkan atau dirujuk.
- `partial`: alat menghasilkan keluaran tetapi ada error, rentang hilang, atau hasil tidak menyeluruh; alasan dan pekerjaan lanjutan wajib dicatat.
- `classified`: diperiksa dan ditetapkan sebagai data/resource/runtime/library eksternal, bukan unit source yang harus didecompile; dasar klasifikasi wajib ada.
- `blocked`: tidak dapat diproses; blocker, percobaan, dan alternatif wajib dicatat.
- `pending`: belum diperiksa.

Status agregat tidak boleh menghitung `pending` atau `blocked` sebagai selesai. Unit `partial` hanya dapat keluar dari denominator decompile bila dibuktikan sebagai data/non-code, atau keterbatasan intrinsiknya dicatat sebagai batas akhir dengan bukti dan tanpa byte/rentang yang tidak terjelaskan.

### Unit yang dihitung

1. **Kontainer dan paket:** semua entri XAPK, base APK, split APK, metadata split, dan manifest.
2. **DEX:** setiap file DEX, class, serta method yang ditemukan. Hasil decompiler dan error dipetakan ke unit yang terdampak.
3. **Resource:** setiap resource diinventarisasi; resource non-code dapat berstatus `classified`, sedangkan XML/value yang bisa didekode harus ditampilkan.
4. **Native:** setiap ELF/library dan arsitektur. Untuk `libapp.so`, inventaris fungsi/rentang kode yang ditemukan dari metadata AOT dan Ghidra, termasuk rentang tak terpetakan/overlap.
5. **Flutter/Dart AOT:** library, object pool, string, class, fungsi, entry point, dan code range yang dipulihkan oleh alat. Nama rekonstruksi harus dibedakan dari simbol asli.
6. **Pemetaan aplikasi:** route, modul, caller/service, konfigurasi endpoint, autentikasi, dan hubungan antarkomponen. Semua hubungan harus diberi label statis atau runtime.
7. **Runtime (opsional, terpisah):** hanya observasi dari build/perangkat yang kompatibel dan lingkungan yang diizinkan; tidak menjadi prasyarat untuk menyatakan cakupan artefak statis lengkap.

## 6. Kriteria penerimaan “100% inventaris”

Target dapat dinyatakan **100% cakupan inventaris statis untuk versi tertentu** hanya jika seluruh kriteria berikut terpenuhi:

- SHA-256, ukuran, asal, versi target, daftar split, dan seluruh path kontainer tercatat; tidak ada split yang hilang.
- Semua class dan method DEX mempunyai status, tautan keluaran, atau alasan terklasifikasi/terblokir. Tidak ada error JADX tanpa pemetaan dampak ke unit tertentu.
- Semua resource tercatat dan telah didekode atau diklasifikasi.
- Semua library native tercatat per ABI. Untuk AOT yang dianalisis, setiap fungsi/rentang yang dapat dikenali mempunyai status dan relasi ke hasil Blutter/Ghidra; rentang tidak dikenal, konflik batas, dan data executable harus dibahas eksplisit.
- Semua entry, route, modul, dan pemetaan service/API dalam cakupan laporan mempunyai sumber bukti dan label keyakinan. Nilai yang belum ditemukan ditandai `unknown`, bukan dianggap tidak ada.
- Tidak ada unit `pending`; setiap `partial`/`blocked` mempunyai bukti, upaya, dampak, dan keputusan apakah mencegah klaim 100%.
- Pipeline dokumentasi lolos pemeriksaan integritas, link/struktur yang ditentukan, serta pemindaian secret. Bundle publik tidak berisi APK, DEX, `.so`, database Ghidra, token, atau API key.
- README dan progress report menunjuk commit input, versi alat, tanggal analisis, denominator, numerator, dan gap yang sama.

Persentase harus selalu ditampilkan bersama rumus `unit selesai / unit total` dan definisi denominator. Bila inventaris AOT belum dapat membuktikan batas total fungsi/rentang, laporan hanya boleh menyebut **100% unit yang ditemukan**, bukan 100% decompile aplikasi.

## 7. Baseline dan gap saat PRD ditulis

| Area | Baseline terverifikasi | Gap utama |
|---|---|---|
| Identitas | versi 1.11.1 (65); split ARM64 memuat `libapp.so` | Sumber paket dan hash perlu dipertahankan per snapshot analisis. |
| DEX/resource | JADX 1.5.6 menulis 14.647 file Java dan 797 resource dari 10.477 unit | 164 error, exit code 3; dampak per class/method belum dipetakan lengkap. |
| Flutter AOT | Blutter menghasilkan 2.312 file assembly dan 418 file khusus paket | Satu assertion pada `0xcab944`; kelengkapan inventory fungsi/range belum dibuktikan. |
| Ghidra | Ghidra 12.1.4; 2.052 fungsi setelah lima seed Blutter; lima pseudocode terpilih | Auto-analysis default menemukan nol fungsi; hasil seeded bukan bukti seluruh fungsi pulih. |
| Fitur | 49 route, 18 pengecualian pemeriksaan sesi, 36 caller/service triples, 43 direktori modul | Pemetaan bersifat statis; perlu denominator, status, dan cross-reference yang konsisten. |
| Runtime | Tidak ada eksekusi target atau traffic backend | Emulator x86_64 tidak kompatibel dengan split ARM64; runtime tetap tidak diketahui. |
| Publikasi | Analisis dan evidence tersimpan di repo privat | README perlu arsitektur/progress; CI/CD dan aturan proteksi branch belum dibuat. |

Detail baseline dan bukti ada di `reports/ANALYSIS.md`, `reports/FEATURE-MAP.md`, `reports/GHIDRA-ANALYSIS.md`, `reports/GHIDRA-AOT-SELECTED.md`, serta manifest di `reports/`.

## 8. Kebutuhan produk

### Dokumentasi dan navigasi

- README menjadi halaman awal: identitas target, indikator progres, diagram arsitektur, status temuan, reproduksi, link laporan, dan batasan.
- Diagram versi SVG yang tersimpan di repo menampilkan kontainer/split, Android wrapper, Flutter engine, Dart AOT, modul, serta batas konfigurasi API/OAuth/Firebase. Setiap relasi diberi sumber dan ditandai statis atau runtime.
- `reports/PROGRESS.md` memuat denominator dan status per lapisan, tanggal/commit snapshot, alat, gap dan next action.
- Laporan menggunakan label konsisten: **ditemukan statis**, **diamati runtime**, **inferensi**, dan **belum diketahui**.

### Analisis dan reproduksi

- Perintah, versi alat, input hash, konfigurasi, exit code, serta output diringkas untuk JADX, Blutter, Ghidra, dan skrip pendukung.
- Ghidra analysis mencatat image base, alamat asal vs alamat Ghidra, metode seed, jumlah fungsi sebelum/sesudah, rentang overlap, dan hasil yang dapat direproduksi.
- Recovered code selalu diberi provenance dan tidak dinamai sebagai source asli bila berasal dari rekonstruksi.
- Artefak besar/proprietary disimpan di penyimpanan privat lokal/CI; repo hanya menerima laporan, metadata yang aman, skrip, dan sanitized excerpts yang diperlukan.

### CI/CD

- **CI pull request:** validasi Markdown dan JSON, pemeriksaan konsistensi manifest/progress, `git diff --check`, pemindaian secret, serta pemeriksaan bahwa artefak terlarang tidak masuk diff.
- **CI main:** ulangi validasi dan buat bundle dokumentasi sanitized dengan provenance commit.
- **CD:** unggah bundle sanitized sebagai artifact privat/release sesuai konfigurasi repo; tidak menjalankan APK, tidak menghubungi backend, dan tidak mengunggah input binary.
- Analisis berat dijalankan manual atau terjadwal dengan input eksplisit yang diunduh dari penyimpanan privat, hash diverifikasi, versi tool dipin, lalu hasil disanitasi sebelum publikasi.
- Action CI dipin ke versi immutable/commit SHA; token memakai izin minimum dan secret hanya dari GitHub Actions Secrets/Environment.
- Workflow harus gagal bila pemindaian mendeteksi secret berisiko atau binary proprietary, dan tidak boleh mencetak nilai sensitif ke log.

### Kontribusi dan rilis

- Setiap perubahan masuk melalui branch dan Pull Request, satu Conventional Commit per PR, lalu **squash and merge**.
- Judul commit memakai tipe Conventional Commits, misalnya `docs: define reverse engineering PRD`, `feat: add architecture map`, atau `ci: validate sanitized reports`.
- PR merujuk laporan, bukti, dampak denominator, dan batasan. Merge hanya setelah required checks lulus.
- Pengaturan branch protection/ruleset GitHub harus mewajibkan PR dan CI serta memakai squash-only; konfigurasi host dicatat bila tidak dapat dikelola dari repo.

## 9. Metrik yang ditampilkan

| Metrik | Rumus | Ketentuan |
|---|---|---|
| Inventaris paket | entri berstatus akhir / semua entri | `classified` dihitung selesai untuk inventaris, ditampilkan terpisah dari decompile. |
| Cakupan DEX | class dan method terproses / total class dan method | Laporkan error decompiler terpisah dan tautkan unit terdampak. |
| Cakupan resource | resource didekode atau diklasifikasi / total resource | Pisahkan resource value/XML dari aset binary. |
| Cakupan AOT/Ghidra | fungsi/range punya status / total hasil inventaris AOT | Sebut sumber denominator; tanpa total yang terbukti, jangan sebut 100% aplikasi. |
| Pemetaan fitur | item dengan evidence / total item terpulihkan | Route/module/service adalah temuan statis kecuali ada bukti runtime terpisah. |
| Error terbuka | error belum dipetakan dampaknya | Target nol error tanpa triase; error intrinsik tetap dicatat sebagai blocker atau batas. |

## 10. Keamanan dan provenance

- Jangan commit APK/XAPK, `.dex`, `.so`, token, kredensial, private key, akun mahasiswa, data personal, atau traffic yang mengandung identitas.
- Hash artefak menjadi identitas input, bukan pengganti bukti asal. Catat sumber, tanggal pengambilan, dan metode pemerolehan tanpa menaruh data login.
- Sanitasi harus dilakukan sebelum commit dan diperiksa lagi oleh CI; jangan mengandalkan redaksi manual saja.
- Ghidra project/database dan file intermediate disimpan di luar repo kecuali telah ditinjau dan dinyatakan aman.
- Laporan membedakan observasi dari inferensi dan tidak memuat instruksi untuk mengakses akun atau backend tanpa otorisasi.

## 11. Rencana kerja dan Definition of Done

1. **PRD dan tata kerja:** dokumen ini masuk melalui PR; konvensi commit, squash merge, dan batas klaim disepakati.
2. **Dokumentasi:** README dirapikan; diagram arsitektur SVG dan progress report dibuat dari baseline evidence.
3. **Pipeline:** CI validasi docs/manifests/secrets/artifact allowlist; CD hanya menerbitkan bundle sanitized.
4. **DEX/resource:** inventaris per file/class/method/resource dan triase 164 error JADX.
5. **AOT/Ghidra:** inventaris semua library/rentang; jalankan dan catat analisis Ghidra dengan seeding terkontrol; triase assertion Blutter dan selisih batas.
6. **Pemetaan:** route, modul, service dan hubungan autentikasi dihubungkan ke evidence dan status keyakinan.
7. **Penutupan snapshot:** ulangi hash/input audit, hitung ulang semua metrik, pastikan tidak ada unit pending atau error tak terjelaskan, dan terbitkan laporan final.

Sebuah snapshot selesai ketika langkah yang berlaku untuk snapshot itu memiliki artefak/evidence, CI lulus, semua status terminal, dan reviewer dapat mengulang klaim. Bila hilangnya informasi dari kompilasi menghalangi pemulihan source Dart yang identik, laporan akhir tetap menunjukkan batas tersebut dan menyatakan cakupan decompile biner yang benar-benar terukur.
