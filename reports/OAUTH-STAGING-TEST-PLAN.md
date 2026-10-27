# Rencana uji OAuth pada staging — Simaster UGM Student vNEXT

- **Status:** draf; **belum dijalankan**.
- **Prasyarat mutlak:** izin tertulis dari pemilik sistem UGM, lingkungan staging yang disetujui, akun uji, client uji, dan batas waktu pengujian.
- **Target uji:** staging OAuth/API dan build uji yang disetujui. **Bukan produksi.**
- **Tujuan:** memverifikasi kandidat F-02.1–F-02.8 dari [`OAUTH-DEEP-DIVE.md`](OAUTH-DEEP-DIVE.md), menentukan dampak sebenarnya, dan mengukur efektivitas perbaikan.
- **Sifat:** rencana ini tidak boleh dipakai untuk menguji sistem tanpa izin. Jangan mengarahkan build production ke staging atau sebaliknya tanpa persetujuan tertulis.

> **Peringatan:** beberapa uji di bawah mensimulasikan login CSRF, code interception, dan pemalsuan token. Uji tersebut hanya boleh dilakukan pada perangkat uji, akun uji, dan server staging yang disediakan untuk itu. Hentikan pengujian jika muncul data pengguna nyata, endpoint produksi, atau dampak di luar ruang lingkup.

## 1. Tujuan dan pertanyaan yang dijawab

Rencana ini menjawab pertanyaan berikut dengan bukti runtime yang dapat diaudit:

1. Apakah authorization request dan redirect benar-benar tidak memakai `state`, dan apakah aplikasi menerima code tanpa `state`?
2. Apakah server menerima token exchange tanpa PKCE, dan apakah code dapat ditukar oleh pihak yang bukan pemulai flow?
3. Apakah redirect URI divalidasi secara exact oleh server dan client, atau apakah substring `oauth2`/`login-callback` cukup?
4. Apakah payload sensitif benar-benar dikirim ke Crashlytics pada error token exchange?
5. Apakah token tersimpan plaintext dan dapat dibaca dari perangkat uji?
6. Apakah JWT tanpa signature valid diterima oleh aplikasi?
7. Apakah kredensial dev/staging yang tertanam masih aktif?
8. Apakah komponen exported, cleartext traffic, logging, dan error handling menambah dampak yang berarti?

## 2. Ruang lingkup

### Termasuk

- Authorization Code flow pada staging OAuth UGM.
- Custom tabs, deep link, redirect handler, token exchange, refresh token, dan penyimpanan token.
- Build uji resmi yang memakai konfigurasi staging, atau build uji yang disetujui khusus untuk pengujian.
- Crashlytics **test project** (bukan project produksi).
- Perangkat uji/emulator yang dikelola khusus.
- Analisis logcat, SharedPreferences, proxy flow, dan evidence screenshot/recording.

### Tidak termasuk

- Produksi, akun mahasiswa/staff nyata, data nyata, atau endpoint produksi.
- Pengujian DoS, brute force, rate-limit exhaustion, atau eksploitasi massal.
- Rekayasa sosial terhadap pengguna atau staf.
- Distribusi test harness atau APK uji ke pihak luar.
- Perubahan konfigurasi server tanpa persetujuan pemilik sistem.
- Pengujian yang dapat mengubah data di luar akun uji.

## 3. Prasyarat

### 3.1 Persetujuan dan tata kelola

- [ ] Surat/email izin tertulis dari pemilik sistem UGM yang menyebut:
  - endpoint staging yang boleh diuji;
  - akun uji dan client uji;
  - tanggal/jam dan zona waktu;
  - nama tester dan observer;
  - kontak darurat dan jalur eskalasi;
  - batas data yang boleh diakses;
  - izin eksplisit untuk uji login CSRF/code interception (bila akan dilakukan).
- [ ] Kesepakatan rules of engagement dan stop conditions.
- [ ] Konfirmasi bahwa staging terisolasi dari produksi (database, object storage, email, notifikasi).
- [ ] Konfirmasi kebijakan retensi dan penghapusan evidence.

### 3.2 Akun dan client uji

- [ ] Dua akun uji dengan persetujuan: **victim** dan **attacker**. Keduanya memakai data sintetis.
- [ ] Akun uji tidak memiliki akses ke data nyata, email nyata, atau notifikasi ke pengguna nyata.
- [ ] Client uji staging dengan redirect URI yang disetujui.
- [ ] Secret client uji disimpan di vault test; bukan secret produksi.
- [ ] Kemampuan untuk revoke token dan menonaktifkan akun uji setelah pengujian.

### 3.3 Build dan perangkat

- [ ] Build uji resmi (staging flavor) atau build uji yang disetujui; catat SHA-256, versionName, versionCode, dan sumber build.
- [ ] Build test-only dengan network security config yang mempercayai CA proxy (jika perlu intersepsi HTTPS). Jangan memakai build ini untuk produksi.
- [ ] Perangkat/emulator uji yang di-root atau debug build untuk inspeksi SharedPreferences; perangkat terpisah untuk test harness.
- [ ] Test harness app yang hanya mendaftarkan custom scheme dan mencatat URI; tidak boleh menukar token atau mengirim data ke internet. Uninstall setelah uji.
- [ ] Proxy (mitmproxy/Charles) dengan CA uji; dokumentasikan cara CA dipasang.
- [ ] Test Firebase/Crashlytics project yang terpisah dari produksi; atau instrumentation Frida pada build uji.
- [ ] `adb`, `jq`, tools hashing, screen recorder, dan penyimpanan evidence terenkripsi.

### 3.4 Data dan evidence

- [ ] Vault evidence privat dengan akses terbatas.
- [ ] Aturan redaksi: token, code, cookie, secret, dan PII tidak boleh masuk laporan yang dibagikan.
- [ ] ID evidence (E-01, E-02, ...) dan pemetaan ke test ID.
- [ ] Waktu mulai/selesai setiap uji dan hash build.

## 4. Peran dan tanggung jawab

| Peran | Tanggung jawab |
|---|---|
| UGM system owner | Menyetujui scope, menyediakan staging/akun/client, menerima eskalasi |
| Tester | Menjalankan uji, mengumpulkan evidence, berhenti jika stop condition |
| Observer | Mencatat timeline, memverifikasi batas, menjaga evidence |
| App/backend engineer | Menyediakan build/staging, membantu analisis, memperbaiki |
| Security reviewer | Meninjau hasil, menetapkan status tervalidasi/tidak, menyetujui retest |

## 5. Matriks uji

| ID | Temuan | Tujuan | Metode singkat | Evidence | Risiko |
|---|---|---|---|---|---|
| O-01 | Baseline | Mengukur alur normal dan parameter aktual | Proxy + screenshot + logcat | E-01 | Rendah |
| O-02 | F-02.1 | Menguji ketiadaan `state` dan login CSRF | Code injection via `adb` dengan dua akun uji | E-02 | Sedang |
| O-03 | F-02.2 | Menguji PKCE dan code interception | Test harness + token exchange terkendali | E-03 | Sedang–tinggi |
| O-04 | F-02.3 | Menguji validasi redirect | Variasi `redirect_uri` + deep link | E-04 | Sedang |
| O-05 | F-02.4 | Menguji payload Crashlytics | Trigger error token exchange + inspeksi test project | E-05 | Sedang |
| O-06 | F-02.5 | Menguji penyimpanan token | Inspeksi SharedPreferences di perangkat uji | E-06 | Rendah |
| O-07 | F-02.6 | Menguji verifikasi JWT | Modifikasi token response di lab | E-07 | Sedang |
| O-08 | F-02.7 | Menguji kredensial dev | Validasi client dev terhadap server dev | E-08 | Rendah–sedang |
| O-09 | F-02.8 | Menguji komponen exported/cleartext | Explicit intent + konfigurasi jaringan | E-09 | Rendah |
| O-10 | Logging | Memeriksa kebocoran di logcat | Login normal + error; release/debug | E-10 | Rendah |
| O-11 | Refresh | Memeriksa refresh token dan rotasi | Revoke/expire access token | E-11 | Rendah |
| O-12 | Error handling | Memeriksa `error=access_denied` | Deny consent / respons error | E-12 | Rendah |
| O-13 | Remediation | Mengulang uji kritis setelah perbaikan | O-02/O-03/O-04/O-05/O-06/O-07 | E-13 | Sedang |

## 6. Prosedur rinci

### O-01 — Baseline flow

**Tujuan:** mendapatkan request/response aktual dan memastikan build/staging yang dipakai benar.

1. Catat hash build, version, flavor, dan konfigurasi endpoint yang terlihat dari UI/log.
2. Kosongkan data aplikasi uji: `adb shell pm clear <package>`.
3. Mulai proxy dan screen recording.
4. Jalankan login dengan akun **victim**.
5. Tangkap:
   - authorization request (method, host, path, query);
   - redirect response (status, `Location`);
   - token request (header, body, response status);
   - profile/landing response.
6. Hentikan recording dan simpan evidence E-01.
7. Verifikasi manual:
   - apakah ada `state`?
   - apakah ada `code_challenge`?
   - apakah token request memuat `code_verifier`?
   - apakah `Authorization: Basic` dan `client_secret` ada di body?
   - apakah endpoint benar-benar staging?

**Pass/fail:** baseline dianggap valid jika endpoint staging dan akun uji terkonfirmasi. Jika ada endpoint produksi atau akun non-test, **stop**.

### O-02 — `state` dan login CSRF

**Tujuan:** membuktikan apakah aplikasi menerima code tanpa `state` dan apakah sesi korban dapat dialihkan ke akun penyerang.

**Persiapan:** dua akun uji, dua browser/profil atau satu browser dengan logout, dan aplikasi uji pada layar OAuth. Pastikan code berumur pendek dan hanya untuk client staging.

1. Sebagai **attacker**, buka authorization URL staging di browser yang tidak memiliki aplikasi terpasang, atau gunakan proxy untuk menangkap `Location` tanpa mengikuti redirect.
2. Jangan tukar code di sisi attacker. Simpan code di vault test; jangan tulis di laporan.
3. Di perangkat uji, buka layar OAuth sebagai **victim** (jangan selesaikan login).
4. Kirim code attacker ke aplikasi victim:
   ```bash
   adb shell am start -a android.intent.action.VIEW \
     -d 'id.ac.ugm.student.vnext.simaster://oauth2?code=<ATTACKER_TEST_CODE>'
   ```
5. Amati apakah aplikasi menukar code dan masuk sebagai attacker. Verifikasi identitas pada profil/landing (nama/ID uji).
6. Ulangi dengan:
   - code tanpa `state`;
   - code dengan `state=attacker-value` (aplikasi tidak membacanya);
   - code yang sudah dipakai (harus gagal di server).
7. Jangan melakukan aksi tulis atas nama korban. Cukup observasi identitas sesi.

**Pass/fail:**

- **Fail (F-02.1 terkonfirmasi):** aplikasi menerima code tanpa/mismatched `state` dan sesi menjadi akun attacker.
- **Pass:** aplikasi menolak code tanpa `state`/mismatch, atau server menolak code tersebut.
- **Inconclusive:** deep link tidak mencapai handler saat layar OAuth aktif; catat dan ulangi dengan metode route information yang disetujui.

**Stop condition:** jika sesi mengakses akun non-test atau data nyata, hentikan dan revoke sesi.

### O-03 — PKCE dan code interception

**Tujuan:** menguji apakah code dapat ditukar tanpa `code_verifier` dan apakah test harness dapat menerima code.

1. Dari O-01, konfirmasi tidak ada `code_challenge` pada authorization request.
2. Instal test harness di perangkat uji. Harness hanya mencatat URI dan tidak mengirim data ke internet.
3. Mulai login. Jika Android menampilkan chooser, pilih harness; jika tidak, catat perilaku default.
4. Dari harness, salin code ke script uji lokal (bukan ke aplikasi lain).
5. Tukar code dengan `curl`/script ke token endpoint staging menggunakan client uji dan secret uji:
   ```bash
   curl -sS -X POST '<STAGING_TOKEN_ENDPOINT>' \
     -H 'Content-Type: application/x-www-form-urlencoded' \
     -u '<TEST_CLIENT_ID>:<TEST_CLIENT_SECRET>' \
     --data-urlencode 'grant_type=authorization_code' \
     --data-urlencode 'code=<TEST_CODE>' \
     --data-urlencode 'redirect_uri=<TEST_REDIRECT_URI>'
   ```
6. Jangan menukar code yang sama dua kali; gunakan code baru untuk setiap percobaan.
7. Uji juga token request **tanpa** `code_verifier` (sesuai perilaku app) dan, jika server mendukung, dengan `code_verifier` salah.
8. Catat status dan error code; jangan menyimpan token penuh di laporan.

**Pass/fail:**

- **Fail (F-02.2 terkonfirmasi):** harness menerima code, dan token exchange tanpa `code_verifier` berhasil.
- **Pass:** server menolak token exchange tanpa verifier yang cocok, atau code tidak dapat dicegat.
- **Inconclusive:** chooser tidak muncul dan harness tidak menerima code; uji dengan skenario yang disetujui (misalnya aplikasi resmi dinonaktifkan sementara).

**Stop condition:** jika token yang diperoleh memberi akses ke data non-test atau scope tulis, hentikan, revoke, dan laporkan.

### O-04 — Validasi redirect

**Tujuan:** menguji exact match di server dan client.

1. Dari O-01, catat `redirect_uri` yang dikirim.
2. Di proxy, ulangi authorization request dengan variasi (jangan mengikuti redirect eksternal):
   - redirect URI persis;
   - tambahan suffix, mis. `.../oauth2.evil`;
   - URI lain yang mengandung `oauth2` di path/query;
   - `https://<test-domain>/callback`;
   - `login-callback` di path.
3. Amati status/error dari server. Jika server mengembalikan redirect ke domain uji, **jangan follow**; catat `Location` lalu discard.
4. Uji client `contains` dengan mengirim deep link yang mengandung `oauth2` tetapi bukan URI persis:
   ```bash
   adb shell am start -a android.intent.action.VIEW \
     -d 'id.ac.ugm.student.vnext.simaster://evil/oauth2?code=<TEST_CODE>'
   ```
5. Uji juga `login-callback` jika relevan.
6. Jangan memakai code nyata untuk URI yang tidak disetujui.

**Pass/fail:**

- **Fail (F-02.3 terkonfirmasi):** server menerima redirect URI yang tidak persis, atau aplikasi memproses URI yang hanya mengandung substring.
- **Pass:** server menolak semua variasi dan aplikasi hanya menerima exact URI.
- **Catatan:** Jika server menolak tetapi client masih longgar, tetap catat sebagai hardening client, bukan bukti eksploitasi server.

### O-05 — Payload Crashlytics

**Tujuan:** membuktikan apakah header/body sensitif dikirim ke Crashlytics.

1. Gunakan build uji dengan **test Crashlytics project**; jangan project produksi.
2. Picu error token exchange terkendali, misalnya code invalid/expired atau token endpoint test yang mengembalikan 400.
3. Tunggu upload Crashlytics (atau gunakan `adb shell setprop`/test mode sesuai dokumentasi Firebase).
4. Periksa custom keys:
   - `request_headers`
   - `request_body`
   - `response_body`
   - `endpoint`, `method`, `status_code`
5. Cari keberadaan `Authorization`, `client_secret`, dan `code` di nilai keys. Jangan salin nilai penuh ke laporan; catat jenis data dan redaksi.
6. Alternatif yang lebih terkontrol: hook `FirebaseCrashlytics.setCustomKey` dengan Frida pada build uji, catat argumen, lalu blokir upload. Ini memerlukan izin instrumentation.
7. Jika Crashlytics tidak aktif di staging, catat sebagai “tidak dapat diverifikasi” dan gunakan bukti statis.

**Pass/fail:**

- **Fail (F-02.4 terkonfirmasi):** custom keys memuat Basic credential/`client_secret`/code.
- **Pass:** payload diredaksi atau tidak dikirim.
- **Stop condition:** jika payload memuat token/secret produksi atau terkirim ke project non-test, hentikan dan hapus data.

### O-06 — Penyimpanan token

**Tujuan:** memverifikasi plaintext storage dan aksesibilitas.

1. Login dengan akun uji pada debug build atau perangkat rooted.
2. Inspeksi:
   ```bash
   adb shell run-as <package> cat shared_prefs/<package>_preferences.xml
   ```
   atau pada perangkat rooted:
   ```bash
   adb shell su -c 'cat /data/data/<package>/shared_prefs/<package>_preferences.xml'
   ```
3. Cari key `access_token`, `refresh_token`, `access_token_expiration`, `token_type`, dan data user.
4. Verifikasi apakah nilai dapat dibaca tanpa kunci tambahan.
5. Uji `adb backup` (harus gagal karena `allowBackup=false`), tetapi jangan mengandalkan ini sebagai kontrol utama.
6. Jangan menyimpan token penuh di evidence yang dibagikan.

**Pass/fail:**

- **Fail (F-02.5 terkonfirmasi):** token terbaca plaintext.
- **Pass:** token dienkripsi/Keystore dan tidak terbaca tanpa otorisasi perangkat.
- **Catatan:** ini juga bukti untuk F-03; jangan menduplikasi status tanpa memperbarui F-03.

### O-07 — Verifikasi JWT (opsional, lab-only)

**Tujuan:** menguji apakah klaim JWT yang tidak valid secara signature masih diterima client.

1. Gunakan build uji + proxy + CA uji; akun uji.
2. Intersepsi respons token exchange.
3. Modifikasi payload JWT (mis. `sub` atau `data.attributes`) **tanpa** memperbarui signature.
4. Teruskan respons ke aplikasi.
5. Amati apakah aplikasi menampilkan identitas/atribut yang dimodifikasi sebelum API menolak token.
6. Jangan memakai token yang dimodifikasi untuk akses data nyata; server harus menolaknya.
7. Jika aplikasi langsung memanggil API dan gagal, catat sebagai “client decode-only, server enforcement” bukan bypass.

**Pass/fail:**

- **Fail (F-02.6 terkonfirmasi pada level client):** aplikasi menerima klaim tanpa signature untuk keputusan lokal.
- **Pass:** aplikasi menolak token yang signature-nya tidak valid.
- **Catatan:** temuan ini rendah–sedang; jangan menaikkan severity tanpa dampak otorisasi.

### O-08 — Kredensial dev/staging

**Tujuan:** menentukan apakah client dev yang tertanam masih aktif.

1. Hanya jika UGM mengizinkan: gunakan client ID dev dan secret dev dari artefak privat terhadap **server dev** yang disetujui.
2. Uji authorization request dan token exchange dengan akun uji dev.
3. Jangan mengirim client dev ke production; jangan memakai data nyata.
4. Uji apakah production menolak client dev (harus).
5. Catat status client, scope yang diberikan, dan apakah redirect Postman masih diterima.
6. Rekomendasikan revoke/rotasi tanpa mengekspos secret di laporan.

**Pass/fail:**

- **Fail (F-02.7 terkonfirmasi):** client dev masih aktif dan dapat memperoleh token.
- **Pass:** client dev sudah dicabut/ditolak.
- **Stop condition:** jika server dev tidak terisolasi atau mengarah ke data produksi, hentikan.

### O-09 — Komponen exported dan cleartext

**Tujuan:** menilai dampak permukaan manifest.

1. Verifikasi `dumpsys package` dan `pm get-app-links` untuk melihat exported components dan app links.
2. Coba explicit intent ke AppAuth activities dengan URI uji:
   ```bash
   adb shell am start -n <package>/net.openid.appauth.RedirectUriReceiverActivity \
     -d 'id.ac.ugm.student.vnext.simaster://oauth2?code=<TEST_CODE>'
   ```
   dan `AuthorizationManagementActivity` dengan data uji.
3. Amati crash/log; jangan mengirim code ke server.
4. Verifikasi `usesCleartextTraffic=true` dan tidak adanya network security config.
5. Uji apakah endpoint HTTP staging (jika ada) diterima; jangan menguji endpoint produksi.
6. Jangan melakukan fuzzing intent.

**Pass/fail:**

- **Fail (F-02.8 terkonfirmasi):** explicit intent memicu pertukaran code/aksi auth, atau cleartext membawa data sensitif.
- **Pass:** komponen tidak bereaksi/aman, dan cleartext tidak dipakai untuk data sensitif.
- **Catatan:** ini hardening; dampak rendah kecuali digabung dengan temuan lain.

### O-10 — Logging

**Tujuan:** memeriksa apakah code/token/secret masuk logcat.

1. Bersihkan log: `adb logcat -c`.
2. Jalankan login normal dan error.
3. Simpan log: `adb logcat -d > evidence/logcat.txt`.
4. Cari pola: `Code OAUTH2`, `Access Token`, `Refresh Token`, `client_secret`, `Authorization`, `Bearer`, `oauth`.
5. Ulangi pada build release (jika tersedia) dan debug.
6. Jangan menyertakan log mentah yang memuat token di laporan; redaksi.

**Pass/fail:**

- **Fail:** code/token/secret muncul di logcat.
- **Pass:** tidak ada data sensitif; logging debug mati di release.
- **Catatan:** `Log._isLoggingEnabled` belum pulih; hasil runtime menentukan.

### O-11 — Refresh token

**Tujuan:** memverifikasi refresh flow dan rotasi.

1. Login dengan akun uji; simpan token di vault test.
2. Revoke/expire access token di staging, atau tunggu expiry.
3. Jalankan aksi yang memicu refresh; tangkap request/response.
4. Periksa:
   - `grant_type=refresh_token`;
   - Basic auth dan `client_secret` di body;
   - apakah refresh token dirotasi;
   - apakah token lama ditolak;
   - apakah kegagalan refresh memaksa logout.
5. Jangan menguji replay refresh token secara agresif; gunakan satu kali percobaan dengan koordinasi.

**Pass/fail:**

- **Fail:** refresh token lama tetap valid setelah rotasi, atau secret/code bocor di log/error.
- **Pass:** rotasi dan revocation berjalan; kegagalan refresh menutup sesi.

### O-12 — Error handling

**Tujuan:** memastikan `error=access_denied` tidak menyebabkan hang atau exchange yang tidak perlu.

1. Mulai login, lalu batalkan consent.
2. Amati UI: apakah kembali ke onboarding dengan pesan, atau tetap menunggu.
3. Periksa logcat/proxy: apakah ada token exchange dengan code kosong.
4. Ulangi dengan respons `error=invalid_request`.
5. Catat sebagai temuan fungsional, bukan security, kecuali memicu kebocoran.

## 7. Kriteria pass/fail keseluruhan

| Temuan | Fail (terkonfirmasi) | Pass (termitigasi) |
|---|---|---|
| F-02.1 `state` | App menerima code tanpa/mismatched `state`; sesi menjadi akun attacker | App mengirim `state` acak dan menolak mismatch/missing |
| F-02.2 PKCE | Token exchange tanpa `code_verifier` berhasil; harness dapat menerima code | Server mewajibkan PKCE S256; code tidak dapat ditukar tanpa verifier |
| F-02.3 Redirect | Server menerima redirect non-exact, atau app memproses URI substring | Exact match di server dan client; custom scheme diganti App Links |
| F-02.4 Crashlytics | Header/body dengan secret/code terkirim | Payload diredaksi/dihapus |
| F-02.5 Storage | Token plaintext terbaca | Token di secure storage |
| F-02.6 JWT | Klaim tanpa signature diterima untuk keputusan lokal | Signature/issuer/audience diverifikasi atau klaim tidak dipercaya |
| F-02.7 Dev config | Client dev masih aktif | Client dev revoked; config dihapus dari build production |
| F-02.8 Hardening | Explicit intent/cleartext memberi dampak | Komponen dihapus/dilindungi; cleartext dimatikan |

**Aturan status:** temuan hanya boleh diubah dari “kandidat” menjadi “tervalidasi” jika ada evidence runtime yang dapat direproduksi dan reviewer menyetujuinya. Jika hasilnya negatif, tulis “tidak tervalidasi pada staging” dan jangan menaikkan severity.

## 8. Pengumpulan dan penanganan evidence

| ID | Evidence | Sumber | Redaksi |
|---|---|---|---|
| E-01 | HAR/proxy flow baseline, screenshot, logcat | O-01 | Token/code disamarkan |
| E-02 | Timeline O-02, screenshot identitas sesi, `adb` command | O-02 | Code/token tidak disalin |
| E-03 | Flow harness, token exchange status, error code | O-03 | Token penuh tidak disimpan |
| E-04 | Variasi redirect, status/error, `Location` yang tidak diikuti | O-04 | Jangan follow external |
| E-05 | Custom keys Crashlytics (redacted), screenshot test project | O-05 | Secret/code disamarkan |
| E-06 | XML SharedPreferences (redacted), `run-as` output | O-06 | Token disamarkan |
| E-07 | Respons token termodifikasi dan perilaku UI | O-07 | Jangan gunakan token |
| E-08 | Status client dev, scope, error | O-08 | Secret dev tidak disalin |
| E-09 | `dumpsys`, explicit intent result, log | O-09 | Test code saja |
| E-10 | Logcat redacted | O-10 | Token/code disamarkan |
| E-11 | Refresh request/response, rotasi | O-11 | Token disamarkan |
| E-12 | UI/error handling | O-12 | Tidak ada data sensitif |
| E-13 | Retest evidence | O-13 | Sama seperti di atas |

Penyimpanan:

- Evidence mentah di vault privat terenkripsi; akses hanya tester/observer/reviewer.
- Laporan yang dibagikan memakai redaksi dan fingerprint, bukan nilai penuh.
- Hapus token/code setelah pengujian; revoke semua sesi uji.
- Retensi default 30 hari setelah laporan final, kecuali kebijakan UGM menentukan lain.

## 9. Stop conditions

Hentikan seluruh pengujian dan hubungi kontak UGM jika:

- Muncul endpoint produksi, data pengguna nyata, atau akun non-test.
- Token/code/secret terkirim ke pihak ketiga di luar test project.
- Terjadi akses tulis di luar akun/data uji.
- Akun uji terkunci, rate limit tercapai, atau server menunjukkan tanda DoS.
- Uji memicu peringatan keamanan atau mengganggu pengguna lain.
- Ada keraguan tentang izin atau batas ruang lingkup.
- Ada bukti bahwa test harness/APK uji dapat disalahgunakan di luar lingkungan uji.

Setelah stop: preserve evidence, revoke token, nonaktifkan test client jika perlu, dan buat incident note.

## 10. Cleanup

- [ ] Revoke semua access/refresh token uji.
- [ ] Hapus akun uji atau reset datanya sesuai kebijakan.
- [ ] Uninstall test harness, build uji, dan CA proxy dari perangkat.
- [ ] Hapus proxy flow yang memuat token/code.
- [ ] Hapus test Crashlytics events/custom keys.
- [ ] Kembalikan perangkat ke kondisi awal.
- [ ] Arsipkan evidence final di vault; hapus salinan sementara.
- [ ] Tutup tiket/izin pengujian.

## 11. Pelaporan dan retest

Setelah pengujian:

1. Perbarui [`SECURITY-FINDINGS.md`](SECURITY-FINDINGS.md):
   - status F-02.1–F-02.8;
   - evidence yang mendukung;
   - severity final;
   - rekomendasi perbaikan.
2. Perbarui [`OAUTH-DEEP-DIVE.md`](OAUTH-DEEP-DIVE.md) hanya jika ada bukti runtime baru; jangan mengubah fakta statis.
3. Buat laporan terpisah untuk UGM dengan redaksi.
4. Setelah perbaikan, jalankan O-13:
   - `state` ada dan divalidasi;
   - PKCE S256 diterapkan dan diverifikasi server;
   - redirect exact/App Links;
   - Crashlytics tidak memuat secret/code;
   - token di secure storage;
   - JWT diverifikasi atau tidak dipercaya untuk otorisasi;
   - client dev revoked dan config dihapus;
   - komponen exported/cleartext diperbaiki.
5. Tandai “tervalidasi” hanya jika retest lulus dan reviewer menyetujui.

## 12. Perkiraan urutan pelaksanaan

| Fase | Aktivitas | Output |
|---|---|---|
| 0 | Persetujuan, scope, akun/client, build | Rules of engagement |
| 1 | O-01 baseline | E-01, konfirmasi endpoint |
| 2 | O-02/O-03/O-04 (kritis) | E-02–E-04, status F-02.1–F-02.3 |
| 3 | O-05/O-06/O-07 | E-05–E-07, status F-02.4–F-02.6 |
| 4 | O-08/O-09/O-10/O-11/O-12 | E-08–E-12, hardening |
| 5 | Perbaikan oleh UGM | Build/staging baru |
| 6 | O-13 retest | E-13, status final |

## 13. Referensi

- [`OAUTH-DEEP-DIVE.md`](OAUTH-DEEP-DIVE.md) — bukti statis dan kandidat F-02.
- [`SECURITY-FINDINGS.md`](SECURITY-FINDINGS.md) — ringkasan temuan.
- [`AndroidManifest.xml`](AndroidManifest.xml) — konfigurasi manifest.
- [`FEATURE-MAP.md`](FEATURE-MAP.md) — route dan middleware sesi.
- [`ANALYSIS.md`](ANALYSIS.md) — batas analisis statis.
