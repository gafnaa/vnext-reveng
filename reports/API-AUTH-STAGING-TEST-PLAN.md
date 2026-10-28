# Rencana uji otorisasi API — F-05 dan F-06

- **Status:** **DRAFT — belum dijalankan.** Tidak ada request yang dikirim dalam penyusunan rencana ini.
- **Target uji:** staging Simaster UGM yang disediakan dan diizinkan secara tertulis.
- **Build:** build uji yang disetujui; catat hash dan versi. Jangan memakai build production.
- **Lingkup:** endpoint F-05 (`/staff`, lookup `get_simaster_atribut_by_username`) dan F-06 (`/v1/staff/micro/doscanent`).
- **Dokumen pendamping:** [`API-AUTH-DEEP-DIVE.md`](API-AUTH-DEEP-DIVE.md) untuk bukti statis dan alamat; [`OAUTH-STAGING-TEST-PLAN.md`](OAUTH-STAGING-TEST-PLAN.md) untuk uji OAuth O-01–O-13.

> **Peringatan:** jangan menjalankan rencana ini terhadap production. Setiap langkah memerlukan izin tertulis dari UGM, lingkungan staging, akun sintetis, event/QR uji, dan persetujuan tertulis untuk melakukan interception serta modifikasi request. Hentikan uji bila data nyata, host production, atau dampak di luar lingkup muncul.

## 1. Tujuan

Membuktikan atau menyanggah kandidat berikut pada staging:

1. **F-05:** apakah lookup username dapat dipanggil oleh token mahasiswa, dan apakah server mengembalikan atribut/status untuk username yang berbeda dari pemilik token.
2. **F-05:** apakah endpoint memerlukan role/scope staff, atau hanya memerlukan token valid.
3. **F-06:** apakah token mahasiswa dapat memanggil `doscanent`, dan apakah server memeriksa role/scope.
4. **F-06:** apakah server memakai identitas dari body (`identitasId`, `username`, `NamaLengkap`, `userTipeNomor`) atau identitas dari token.
5. **F-06:** apakah QR/scan terikat pada event/peserta dan tahan replay.
6. **F-06:** apakah UI dan audit/server state konsisten, termasuk bila UI menampilkan gagal, dan apakah hal itu menimbulkan risiko duplikasi.

## 2. Non-goals

- Tidak menguji production atau host yang tidak tercantum dalam izin.
- Tidak memakai akun, NIU, QR, atau data mahasiswa nyata.
- Tidak melakukan brute force, credential stuffing, load test, atau upaya melewati WAF.
- Tidak mengeksploitasi data di luar dua akun sintetis dan satu event uji.
- Tidak mengubah kode aplikasi production; build uji harus disetujui.
- Tidak menyimpulkan dampak server dari path, scope, atau nama endpoint saja.

## 3. Prerequisites

### 3.1 Izin dan koordinasi

- [ ] Izin tertulis UGM: host staging, path `/staff` dan `/v1/staff/micro/doscanent`, tanggal/waktu, akun uji, event/QR uji, dan metode interception.
- [ ] Nama PIC UGM, kontak darurat, dan jalur eskalasi bila terjadi insiden.
- [ ] Persetujuan untuk mengirim request yang dimodifikasi (method, header, body) ke staging.
- [ ] Persetujuan untuk mengakses audit log/server state guna memverifikasi efek `doscanent`.
- [ ] Konfirmasi tertulis bahwa staging **bukan** production dan tidak berbagi data dengan production.

### 3.2 Lingkungan dan build

- [ ] Base URL staging, misalnya `<staging-base>`; jangan menyalin URL production ke skrip uji.
- [ ] Build uji dengan hash SHA-256 dan versi tercatat.
- [ ] Konfigurasi staging memakai OAuth client staging, bukan client production.
- [ ] Sertifikat TLS/proxy dan perangkat uji disetujui; tidak ada cleartext ke host selain staging.
- [ ] Salinan `libapp.so`/source analysis yang sama dengan build uji; alamat bukti dicatat.
- [ ] Ruang kerja terisolasi dan kredensial uji disimpan di password manager/secret store, bukan di repo.

### 3.3 Akun dan data uji

| Aktor | Keperluan | Catatan |
|---|---|---|
| Student A | Token mahasiswa; identitas A | Akun sintetis; catat username, `identitasId`, `userTipeNomor` |
| Student B | Token mahasiswa; identitas B | Akun sintetis kedua untuk uji beda identitas |
| Staff C | Token staff; akses yang diizinkan | Bila staging menyediakan; catat role/scope aktual |
| Staff C tanpa `staff` scope | Token staff dengan scope terbatas | Hanya bila test client mengizinkan; jangan menambah scope di luar izin |
| Token kedaluwarsa/invalid | Uji negatif | Dapat dibuat dari test client staging |

- [ ] Event uji dengan QR panjang (> 37 karakter), peserta A/B, dan jendela waktu yang disetujui.
- [ ] QR uji ditandatangani/diterbitkan server staging; bukan QR production.
- [ ] Data baseline A/B (status, tipe, kehadiran) dicatat sebelum uji.
- [ ] Prosedur cleanup: hapus/rollback data scan dan event uji setelah selesai.

### 3.4 Tooling dan evidence

- [ ] Proxy interception (mis. mitmproxy/Burp) dengan izin; certificate pinning build uji diketahui.
- [ ] Perangkat uji dengan build staging; waktu perangkat disinkronkan.
- [ ] Akses audit log staging atau layar admin untuk melihat efek scan.
- [ ] Folder evidence privat; tidak ada token/secret/PII di repo atau PR.
- [ ] Template evidence (bagian 7) sudah disiapkan sebelum request pertama.

## 4. Matriks uji

| ID | Target | Aktor/token | Tujuan | Hasil aman yang diharapkan | Sinyal gagal |
|---|---|---|---|---|---|
| A-01 | F-05 `/staff` | Staff C | Baseline envelope dan kontrak | Request diterima sesuai kontrak staging; tidak ada data tak terduga | 404/405/HTML berulang; envelope tidak dapat direproduksi |
| A-02 | F-05 `/staff` | Tanpa token, invalid, expired | Uji autentikasi | 401/403; tidak ada data | 2xx dengan data |
| A-03 | F-05 `/staff` | Student A, username A | Akses diri sendiri | Bila endpoint staff-only: 403. Bila self-service: hanya data A | Data B/akun lain; status/tipe bocor |
| A-04 | F-05 `/staff` | Student A, username B | Enumerasi/IDOR | 403, atau 400 tanpa data B | Data/status/tipe B; pesan yang membedakan akun |
| A-05 | F-05 `/staff` | Staff C, student A, token tanpa scope | Peran/scope | Staff sesuai izin; student ditolak; scope diperiksa | Student mendapat data; scope tidak berpengaruh |
| A-06 | F-06 `doscanent` | Student A via app | Baseline UI dan server state | Aksi hanya untuk A/event uji; UI dan server konsisten | Aksi untuk B; UI sukses tanpa audit; aksi tanpa otorisasi |
| A-07 | F-06 `doscanent` | Student A langsung | Cross-role call | 401/403, atau diizinkan hanya untuk A sesuai kebijakan | 2xx dan aksi tercatat untuk identitas lain |
| A-08 | F-06 `doscanent` | Student A, body identitas B | Identity tampering | Ditolak, atau identitas token A yang dipakai | Aksi/data untuk B |
| A-09 | F-06 `doscanent` | Student A/B, QR sama | Replay/binding | Scan kedua ditolak/idempoten; QR terikat event/peserta | Dua record; scan B diterima untuk QR A |
| A-10 | F-06 `doscanent` | Matriks token | Peran/scope | Kebijakan konsisten; token tidak berhak ditolak | Student diterima saat kebijakan staff-only; scope diabaikan |
| A-11 | F-06 UI | Student A via app | Konsistensi UI/server | UI sukses saat server sukses; UI gagal saat server gagal | UI gagal (`alert_fail_scan`) padahal audit/server state menunjukkan aksi sukses |
| A-12 | F-05/F-06 | Terbatas | Rate limit/audit | 429/limit dan audit trail terlihat | Tidak ada limit/audit pada pengulangan terbatas |
| A-13 | F-05/F-06 | Matriks terpilih | Retest setelah perbaikan | Semua kontrol yang ditargetkan lulus | Regresi atau kontrol tidak berlaku |

## 5. Kriteria lulus/gagal

Gunakan definisi berikut secara konsisten:

- **PASS (aman):** request yang tidak berhak ditolak dengan 401/403, atau bila endpoint memang untuk mahasiswa, aksi hanya terjadi untuk identitas/event yang berhak; tidak ada data akun lain.
- **FAIL (kandidat terkonfirmasi):** token mahasiswa mendapat data akun lain; `doscanent` mencatat aksi untuk identitas lain; QR replay diterima; role/scope yang seharusnya wajib tidak diperiksa.
- **INCONCLUSIVE:** endpoint tidak ada, 404/405, kontrak berbeda, WAF/HTML, tidak ada audit state, atau build tidak dapat diarahkan ke staging. Jangan memaksakan interpretasi.
- **F-05 status 400:** bukan otomatis PASS atau FAIL. Catat body `res`; FAIL bila body memuat data/status akun lain. PASS bila 400 hanya berisi penolakan generik tanpa data.
- **F-06 UI `alert_fail_scan`:** bukan bukti server gagal. Verdict otorisasi harus memakai audit/server state, bukan layar.
- **Scope/path mismatch:** bukan bukti FAIL. Catat policy yang berlaku; FAIL hanya bila server mengizinkan aksi yang jelas-jelas tidak berhak.

## 6. Uji rinci

### A-01 — Baseline envelope F-05

**Tujuan:** merekam envelope aktual dan memastikan endpoint staging dapat diuji tanpa menebak format.

**Langkah:**

1. Dapatkan token Staff C yang sah untuk staging.
2. Gunakan build uji/proxy untuk mengirim lookup username sintetis A.
3. Rekam method, path, header, `Content-Type` final, fields `json1`/`json`, status, dan body.
4. Ulangi sekali dengan username sintetis B untuk memastikan envelope sama.
5. Jangan mengubah peran/token pada langkah ini.

**Hasil aman:** endpoint merespons sesuai kontrak staging; tidak ada data di luar akun uji. Bila 404/405/HTML, hentikan dan tandai INCONCLUSIVE.

**Evidence:** request/response teredaksi, hash build, timestamp, status, catatan PIC.

**Catatan:** jangan mengganti envelope `json1`/`json` dengan JSON biasa. Bila alat uji tidak dapat mereproduksi envelope, gunakan build uji/proxy atau tandai BLOCKED; jangan menyimpulkan dari format yang berbeda.

### A-02 — F-05 tanpa token / token tidak valid

**Langkah:**

1. Kirim envelope A-01 tanpa header `Authorization`.
2. Ulangi dengan token acak yang tidak valid.
3. Ulangi dengan token staging yang kedaluwarsa, bila tersedia.
4. Gunakan username sintetis A; jangan mengubah body lain.

**Hasil aman:** 401/403 untuk ketiga kasus; tidak ada body data.

**Gagal:** 2xx dengan data, atau pesan yang mengungkap keberadaan/atribut akun.

### A-03 — F-05 self lookup dengan token mahasiswa

**Langkah:**

1. Token Student A; username A.
2. Kirim envelope A-01.
3. Catat status dan body; bandingkan dengan data baseline A.
4. Jangan mengulang lebih dari tiga kali.

**Hasil aman:** bila endpoint staff-only, 403. Bila endpoint memang self-service, hanya atribut A yang dikembalikan.

**Gagal:** data B/akun lain, atau atribut yang tidak seharusnya tersedia untuk mahasiswa.

**Inconclusive:** 400 dengan pesan generik yang tidak dapat dibedakan; catat dan lanjut ke A-04.

### A-04 — F-05 lookup username lain

**Langkah:**

1. Token Student A; username B.
2. Kirim envelope yang sama.
3. Bandingkan status/body dengan A-03. Jangan melakukan enumerasi massal.
4. Bila respons 400, catat field `res` dan pesan; jangan menyimpulkan dari pesan saja.

**Hasil aman:** 403, atau 400 tanpa data B; respons tidak membedakan akun aktif/nonaktif secara jelas.

**Gagal:** `res`, `is_active`, `user_tipe_nomor`, atau atribut B muncul; pesan membedakan akun.

### A-05 — F-05 role/scope matrix

**Langkah:**

1. Siapkan token Staff C yang sah, token Student A, dan (bila tersedia) token staff tanpa scope terkait.
2. Untuk setiap token, kirim lookup username A dan B.
3. Catat status, body, dan scope/role yang tercatat pada token (bukan isi token penuh).
4. Bandingkan dengan kebijakan yang diberikan UGM.

**Hasil aman:** staff yang berhak dapat melakukan lookup sesuai kebutuhan; student ditolak; token tanpa scope ditolak bila scope memang kontrol.

**Gagal:** student mendapat data; token tanpa scope tetap mendapat data; peran tidak berpengaruh.

### A-06 — F-06 baseline melalui aplikasi

**Langkah:**

1. Login sebagai Student A pada build staging.
2. Buka tab attendance; pastikan lokasi asli/izin lokasi sesuai prosedur uji dan bukan fake location.
3. Pindai QR uji panjang (> 37 karakter) yang disediakan UGM.
4. Rekam request `doscanent`, status, body, dan UI.
5. Catat audit/server state sebelum dan sesudah, termasuk peserta/event.
6. Jangan mengulang scan; simpan satu request untuk analisis.

**Hasil aman:** aksi hanya tercatat untuk A pada event uji; UI dan audit konsisten; tidak ada identitas lain.

**Gagal:** aksi untuk B/identitas lain; aksi tanpa otorisasi; UI sukses tanpa audit.

**Catatan:** jangan mengubah body FormData menjadi JSON biasa; rekam envelope apa adanya. Bila UI menampilkan `alert_fail_scan`, jangan langsung mengulang. Cek audit terlebih dahulu; ini adalah A-11.

### A-07 — F-06 panggilan langsung dengan token mahasiswa

**Langkah:**

1. Ambil envelope A-06 (path, header, fields) tanpa mengubahnya.
2. Kirim ulang dengan token Student A dan body identitas A, code QR uji yang sama atau QR uji baru yang disetujui.
3. Rekam status, body, audit, dan UI tidak relevan untuk request langsung.
4. Bandingkan dengan hasil A-06.

**Hasil aman:** 401/403, atau bila fitur memang untuk mahasiswa, aksi hanya untuk A/event uji. Tidak ada data/aksi untuk B.

**Gagal:** 2xx dan audit menunjukkan aksi untuk identitas lain, atau aksi yang tidak terkait event.

**Inconclusive:** 2xx tanpa audit/state yang dapat diverifikasi.

### A-08 — F-06 identity tampering

**Langkah:**

1. Token Student A; body memakai `identitasId`, `username`, `NamaLengkap`, dan `userTipeNomor` milik B.
2. Gunakan QR uji yang sah untuk event dan, bila format QR memuat identitas, gunakan QR untuk A; jangan memakai QR yang memang diterbitkan untuk B.
3. Kirim satu request; rekam status, body, dan audit.
4. Jangan mengulang bila server mencatat aksi; hentikan dan eskalasi.

**Hasil aman:** server menolak mismatch, atau mengabaikan body dan memakai identitas A dari token.

**Gagal:** audit mencatat aksi untuk B, atau respons memuat data B.

**Stop:** bila aksi untuk B tercatat, hentikan semua uji identity tampering dan laporkan segera.

### A-09 — F-06 replay dan binding QR

**Langkah:**

1. Gunakan satu QR uji yang sah dan satu event uji.
2. Scan sebagai A; catat record/audit.
3. Ulangi body yang sama dalam jendela waktu yang disetujui.
4. Ulangi dengan token B dan QR yang sama, bila diizinkan.
5. Berhenti setelah maksimal dua pengulangan atau saat duplikasi terdeteksi.

**Hasil aman:** scan kedua ditolak/idempoten; QR terikat pada peserta/event; tidak ada record ganda.

**Gagal:** record ganda; B dapat memakai QR A; scan di luar jendela diterima.

### A-10 — F-06 token/scope matrix

**Langkah:**

1. Uji tanpa token, token invalid, token expired, Student A, Staff C.
2. Bila tersedia, uji Staff C tanpa scope terkait.
3. Gunakan body identitas yang sesuai token dan QR uji yang sah.
4. Catat status dan audit; jangan melakukan enumerasi peran di luar akun yang disetujui.

**Hasil aman:** hanya token yang berhak yang diterima; token tanpa scope ditolak bila scope adalah kontrol; tidak ada data/aksi lintas identitas.

**Gagal:** Student A diterima saat kebijakan menyatakan staff-only; scope tidak berpengaruh; token expired tetap diterima.

### A-11 — F-06 konsistensi UI dan server

**Langkah:**

1. Gunakan hasil A-06; jangan melakukan scan tambahan.
2. Bandingkan UI (`alert_fail_scan` atau sukses) dengan audit server.
3. Bila UI gagal tetapi audit menunjukkan aksi sukses, catat sebagai temuan fungsional F-06.3.
4. Bila UI sukses tetapi audit kosong, catat sebagai temuan fungsional/keandalan.

**Hasil aman:** UI dan audit konsisten.

**Gagal:** UI gagal (`alert_fail_scan`) padahal audit/server state menunjukkan aksi sukses, atau UI sukses tanpa aksi server. Dampak otorisasi tetap ditentukan oleh A-07/A-08, bukan oleh UI.

### A-12 — Rate limit dan audit (kondisional)

**Langkah:**

1. Hanya jalankan bila izin mencakup pengulangan terbatas.
2. Kirim maksimal 10 request invalid/unauthorized dengan jeda yang disetujui.
3. Periksa 429/limit, audit log, dan alert.
4. Jangan melakukan load test atau pengulangan agresif.

**Hasil aman:** limit/audit terlihat; tidak ada data.

**Gagal:** tidak ada limit/audit pada pengulangan terbatas, atau data bocor.

**Catatan:** bila tidak diizinkan, tandai NOT RUN, bukan PASS.

### A-13 — Retest setelah perbaikan

**Langkah:**

1. Ulangi A-02–A-11 pada build staging yang telah diperbaiki.
2. Gunakan akun/event uji yang sama atau pengganti yang setara.
3. Bandingkan hasil dengan baseline; catat regresi.
4. Perbarui laporan dan matriks status.

**Hasil aman:** kontrol yang ditargetkan lulus; tidak ada regresi fungsional pada alur attendance yang sah.

## 7. Pengumpulan evidence

Untuk setiap uji, simpan:

| Field | Isi |
|---|---|
| Test ID | A-01 … A-13 |
| Waktu | ISO-8601 dengan zona waktu |
| Build | Versi + SHA-256 `libapp.so`/APK uji |
| Host | Hanya host staging yang diizinkan |
| Aktor | Student A/B/Staff C; bukan nama nyata |
| Token fingerprint | SHA-256 token, 12 karakter pertama; token penuh tidak disimpan di laporan |
| Request | Method, path, header teredaksi, body teredaksi |
| Response | Status, `Content-Type`, body teredaksi |
| Server audit | ID/record event, peserta, waktu, hasil |
| UI | Screenshot/description, termasuk `alert_fail_scan` |
| Verdict | PASS/FAIL/INCONCLUSIVE + alasan |

Aturan redaksi:

- Jangan menyalin `Authorization`, cookie, token, secret, NIU, nama, atau QR mentah ke laporan PR.
- Ganti nilai identitas dengan `<student-a>`, `<student-b>`, `<event-test>`.
- Simpan nilai penuh hanya di evidence privat yang disetujui.
- Hash build dan token fingerprint boleh dicatat.

## 8. Stop conditions

Hentikan uji dan hubungi PIC UGM bila:

- traffic diarahkan ke host production atau host di luar izin;
- data mahasiswa nyata/PII muncul di respons;
- `doscanent` mencatat aksi untuk identitas lain atau event nyata;
- QR uji memengaruhi event/kelas nyata;
- token uji memiliki scope/role lebih luas dari yang disetujui;
- terjadi duplikasi massal, error server, atau rate limit yang tidak terkendali;
- audit/state tidak dapat diakses sehingga efek tidak dapat dibatasi;
- ada permintaan dari pihak lain untuk melanjutkan tanpa izin.

Setelah stop: jangan retry agresif, simpan evidence, rotasi token uji bila perlu, dan kirim laporan awal ke PIC.

## 9. Hubungan dengan uji OAuth

Uji ini dijalankan **setelah** OAuth staging plan O-01–O-13 selesai atau setidaknya setelah token staging yang sah tersedia. F-05/F-06 tidak menguji ulang `state`, PKCE, redirect, atau penyimpanan token; gunakan hasil OAuth untuk memastikan token yang dipakai berasal dari alur yang disetujui.

Urutan yang disarankan:

1. OAuth O-01–O-13 (bila diizinkan).
2. A-01–A-05 untuk F-05.
3. A-06–A-11 untuk F-06.
4. A-12 (kondisional), lalu A-13 setelah perbaikan.

## 10. Pelaporan hasil

Setiap hasil harus menyebut:

- apa yang diuji dan token/peran yang dipakai;
- status HTTP dan efek server yang teramati;
- apakah hasil mendukung, menyanggah, atau tidak menyimpulkan kandidat;
- batas (mis. tidak ada audit, endpoint 404, UI tidak dapat diarahkan ke staging);
- rekomendasi perbaikan dan kebutuhan retest.

Jangan mengubah status F-05/F-06 dari **kandidat** menjadi **terkonfirmasi** tanpa bukti server yang dapat diaudit. Jangan mempublikasikan token, secret, PII, atau QR production.
