# API authorization deep dive — F-05 dan F-06

- **Target:** `id.ac.ugm.student.vnext.simaster` 1.11.1 (code 65)
- **Input utama:** `libapp.so` ARM64, SHA-256 `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290`
- **Sifat laporan:** analisis statis AOT/Blutter. Tidak ada aplikasi yang dijalankan, tidak ada request yang dikirim, dan tidak ada traffic capture. Semua temuan berstatus **kandidat** sampai diuji pada staging yang berizin.
- **Lingkup:** reachability route, envelope request, pemilihan endpoint, peran/scope yang terlihat, penanganan respons, dan pertanyaan otorisasi yang harus diuji.

> **Peringatan:** jangan menguji temuan ini ke sistem produksi UGM tanpa izin tertulis. Laporan ini tidak memuat token, secret, atau data pengguna. Nilai penuh yang relevan tetap berada di artefak privat [`analysis-results.zip`](../analysis-results.zip).

## Ringkasan eksekutif

F-05 dan F-06 sama-sama menyentuh endpoint dengan prefiks `staff`, tetapi bukti statisnya berbeda:

- **F-05** adalah **lookup akun berbasis username**, bukan login dan bukan jalur pre-auth. Route `/auth` terdaftar, tetapi tidak memiliki pemanggil statis yang ditemukan dan tidak ada di allowlist `SessionMiddleware`. Controller-nya juga memakai token Bearer dari `getValidAccessToken`. Karena itu label lama “RPC pre-auth” tidak didukung oleh bukti statis; status yang lebih tepat adalah **latent, session-gated, dan belum terbukti reachable dari UI normal**.
- **F-06** lebih kuat untuk reachability: tab attendance di `LandingView` membangun `AttedenceView` secara langsung, dan kartu `participant_student` menavigasi ke `/qr-scanner`. Pemeriksaan yang terlihat adalah integritas perangkat/lokasi palsu, bukan pemeriksaan peran. QR dengan panjang lebih dari 37 karakter memilih `v1/staff/micro/doscanent`, mengirim identitas dari client, dan memakai token OAuth pengguna. Ini adalah kandidat **cross-role call dan parameter/identity tampering**, bukan bukti bahwa server menerima aksi tersebut.

| ID | Fakta statis | Kandidat | Keyakinan | Status |
|---|---|---|---|---|
| F-05.1 | `/auth` memanggil `staff/get_simaster_atribut_by_username` hanya dengan username dan nilai tetap `"8"` | Enumerasi akun/status bila route dapat dipanggil dengan token valid | Tinggi untuk fakta statis; rendah untuk reachability | Latent; uji A-02–A-04 |
| F-05.2 | Request F-05 memakai `BaseNetworking` dengan Bearer dan `UGMFWSERVICE: 1` | Student token ke microservice `staff` bila server hanya memeriksa prefiks/path | Sedang | Kandidat; uji A-05 |
| F-05.3 | Password divalidasi di form, tetapi tidak dibaca oleh controller dan tidak ada di request | Salah desain/legacy; bukan bukti bypass login | Tinggi | Observasi statis |
| F-06.1 | UI mahasiswa dapat memilih endpoint `v1/staff/micro/doscanent` | BFLA/cross-role call bila server tidak memeriksa peran/scope | Sedang | Kandidat; uji A-06/A-07/A-10 |
| F-06.2 | Body mengirim `identitasId`, `username`, `NamaLengkap`, dan `userTipeNomor` dari client | IDOR/parameter tampering bila server memakai nilai body, bukan identitas token | Sedang–tinggi | Kandidat; uji A-08 |
| F-06.3 | Jalur QR panjang mengembalikan `null`; controller mengubahnya menjadi `false`; UI menampilkan `alert_fail_scan` | UI melaporkan gagal meski server memproses; risiko retry/duplikasi | Tinggi untuk fakta statis | Temuan fungsional; uji A-11 |

**Kesimpulan singkat:** F-05 belum layak disebut pre-auth atau account takeover. F-06 layak diprioritaskan sebagai kandidat otorisasi karena jalur UI-nya jauh lebih jelas, tetapi server tetap harus membuktikan apakah token mahasiswa diterima dan apakah identitas di body dipercaya. Tidak ada klaim eksploitasi.

## Metode dan batas

- Sumber: output Blutter (`asm/simaster_ugm/...`), object pool `pp.txt`, manifest, dan output Ghidra.
- Alamat di laporan ini adalah **alamat Blutter**. Alamat Ghidra = alamat Blutter + `0x100000`, sesuai [`GHIDRA-ANALYSIS.md`](GHIDRA-ANALYSIS.md).
- “Tidak ditemukan” berarti tidak ada string, pemanggilan, atau kontrol yang teramati pada code path yang dipulihkan. Ini bukan bukti formal bahwa jalur runtime tidak ada; Flutter AOT dapat membangun string secara dinamis dan sebagian control flow belum pulih.
- Tidak ada eksekusi, Frida, proxy, atau request ke server. Karena itu laporan tidak menyatakan bahwa server menerima token mahasiswa, bahwa `doscanent` berhasil, atau bahwa data pengguna dapat diambil.
- Istilah **kandidat** berarti “konsisten dengan kode statis, tetapi belum diverifikasi pada runtime/server”.

## Reachability dan middleware

`SessionMiddleware` membangun allowlist 18 path di constructor `0xeb03e4`–`0xeb050c`. Path yang relevan:

| Path | Ada di allowlist? | Bukti route | Reachability statis |
|---|---|---|---|
| `/auth` | Tidak | `AppPages.routes` `0xd7a1a0`, `AuthView` `0xd7ebe4` | Tidak ada pemanggil statis; route terdaftar tetapi tidak ditemukan navigasi ke sana |
| `/attedence` | Tidak | `0xd7a7c0`, `AttedenceView` | Route terdaftar; selain itu `LandingView` membangun `AttedenceView` langsung |
| `/qr-scanner` | Tidak | `0xd7b4d8`, `QrScanner` | Dipanggil dari kartu `participant_student` di `AttedenceView` |
| `/landing` | Ya | `0xd7a128` | Halaman setelah login |
| `/login-ugm` | Ya | Tidak ada route yang ditemukan | Allowlist ada, tetapi tidak ada binding route pada 49 route yang dipulihkan |

Implikasi:

- Tidak adanya `/auth`, `/attedence`, dan `/qr-scanner` di allowlist berarti jalur normal memerlukan sesi. Ini **bukan** bukti bahwa route tersebut aman; hanya berarti middleware mencoba mengarahkan pengguna tanpa token.
- `/auth` tidak memiliki pemanggil statis, sehingga klaim “pre-auth” pada ringkasan lama tidak dapat dipertahankan. Route ini dapat berupa dead/legacy code, atau dapat dimasuki lewat mekanisme dinamis yang belum teramati.
- `/attedence` bukan satu-satunya jalur: `LandingView` membangun `AttedenceView` langsung untuk tab attendance. Ini membuat F-06 lebih relevan daripada F-05.

## F-05 — Lookup akun `get_simaster_atribut_by_username`

### 1. Route, form, dan controller

`/auth` dipetakan ke `AuthView` pada `AppPages.routes` (`0xd7a1a0`; closure `0xd7ebe4`). Tidak ada referensi `toNamed('/auth')`, `offAllNamed('/auth')`, atau string `/auth` lain di output Dart yang dipulihkan selain registrasi route itu.

Form login memiliki dua controller:

- username: `field_1b`;
- password: `field_1f`.

Tombol login memanggil `checkForm()` (`0xfd9eb4`) lalu `signIn()` (`0xfd9ed8`). `checkForm` memvalidasi form, termasuk field password. Namun `AuthController.signIn` (`0xfd9f24`) hanya membaca controller username (`field_1b`) di `0xfd9f6c`, mengambil teksnya di `0xfd9f74`, lalu mengirimkannya ke `AuthNetworkImpl`. Tidak ada pembacaan `field_1f` di jalur controller ini. Password tidak muncul di request.

### 2. Request yang dibentuk

`AuthNetworkImpl.signIn` (`0xfda15c`) membangun string JSON secara manual:

```json
{"micro":"staff","service":"get_simaster_atribut_by_username","query":[],"param":[[["<username>","8"]]]}
```

Nilai `"8"` adalah konstanta; password tidak ada. Username dimasukkan lewat interpolasi string, bukan `jsonEncode`, sehingga karakter khusus dapat mengubah envelope. Body dikirim ke:

```text
POST https://api.simaster.ugm.ac.id/staff
```

Path yang terlihat adalah `"staff"` (`0xfda200`), dan `BaseNetworking.baseAppUrl` memakai `F::baseUrl()` (`0x91d4b4`), yang pada flavor production bernilai `https://api.simaster.ugm.ac.id/` (`0x91d52c`).

`BaseNetworking.post` (`0x8ec50c`) membungkus body menjadi `FormData` dengan dua field:

| Field | Isi |
|---|---|
| `json1` | string JSON mentah di atas |
| `json` | representasi base64url dari JSON UTF-8; Base64 standar lalu `+`→`.` dan `/`→`_`, serta `=`→`-` |

`getHeaders` (`0x912a04`) menambahkan:

- `Authorization: Bearer <access_token>` dari `getValidAccessToken` (`0x912a50`);
- `Content-Type: application/json;charset=UTF-8` (`0x912a90`);
- `UGMFWSERVICE: 1` (`0x912ac4`);
- `Charset: utf-8` dan `accept: application/json`.

Ada ketidaksesuaian statis: body dibungkus `FormData`, sedangkan header `getHeaders` menyatakan `application/json`. Header final di wire harus direkam pada staging; jangan mengasumsikan body JSON mentah atau multipart tanpa capture.

### 3. Respons dan efek

`AuthNetworkImpl.signIn` mencatat seluruh respons ke log dengan prefiks `sso response: ` (`0xfda230`) sebelum memeriksa status. Status diambil dari field `0x13` dan dibandingkan dengan `400` (`0xfda27c`).

- Jika status **bukan 400**, fungsi melempar `DioException` dengan nilai error `"401"` (`0xfda550`); ini bukan status HTTP yang sebenarnya.
- Jika status **400**, fungsi membaca field `res`.
- `res` kosong (`[]`) menghasilkan pesan “Akun UGM Student tidak aktif”.
- Jika `res.is_active == "0"`, menghasilkan pesan “Maaf akun anda sudah tidak aktif”.
- Jika aktif, fungsi mengembalikan `user_tipe_nomor` (`0xfda420`).

`AuthController.signIn` menyimpan hasil ke SharedPreferences dengan key `user_number_type` (`0xfd9fc4`) dan mengembalikan `true` (`0xfd9fec`). `AuthView` kemudian memanggil `offAllNamed('/landing')` (`0xfda6fc`) bila hasilnya benar. Jalur ini **tidak** menyimpan access token atau refresh token.

Implikasi:

- Endpoint ini adalah lookup atribut akun, bukan autentikasi. Keberhasilan tidak membuktikan password; password bahkan tidak dikirim.
- Status 400 adalah jalur yang diharapkan untuk memproses `res`; respons 2xx justru masuk ke error path. Ini harus diverifikasi pada staging karena dapat berupa kontrak API legacy atau artefak rekonstruksi.
- Logging respons penuh berpotensi memuat PII/atribut akun bila logging aktif. Ini perlu dicek pada build uji, bukan diasumsikan.

### 4. Penilaian otorisasi

Jika route ini dapat dipanggil dengan token mahasiswa mana pun, request hanya membutuhkan username target. Tidak ada bukti bahwa server mengikat username ke pemilik token. Dampak potensial adalah enumerasi akun/status dan pengungkapan tipe pengguna. Namun:

- route tidak memiliki pemanggil statis;
- route tidak ada di allowlist, sehingga jalur normal memerlukan sesi;
- request memakai `getValidAccessToken`, bukan jalur tanpa token;
- tidak ada bukti bahwa server mengembalikan data untuk username yang berbeda dari pemilik token.

Karena itu F-05 tetap **latent**. Jangan sebut “pre-auth bypass” atau “account takeover”. F-05 juga tidak membuktikan bahwa password tidak diperlukan untuk login; ia hanya menunjukkan bahwa endpoint lookup ini tidak memakai password.

### 5. Yang belum dibuktikan

- Apakah `/auth` dapat dicapai lewat dynamic route, deep link, atau kode yang tidak terpulihkan.
- Apakah server menerima envelope `json1`/`json` dan header yang saling bertentangan.
- Apakah server memerlukan role staff, scope tertentu, atau mengikat username ke token.
- Apakah respons 400 adalah kontrak yang berlaku di staging.
- Apakah logging `sso response` aktif pada build production.

## F-06 — Panggilan `doscanent` dari alur mahasiswa

### 1. Reachability

Ada dua jalur UI:

1. Route `/attedence` (`0xd7a7c0`) menuju `AttedenceView`.
2. `LandingView` membangun `AttedenceView` langsung sebagai tab attendance (`0x1014008`), dengan `ForbiddenView` sebagai alternatif (`0x1013fe8`) ketika flag lokasi palsu bernilai true.

Di `AttedenceView`, kartu `participant_student` (`0xfd5f58`) memiliki closure di `0xfd6370`. Closure tersebut:

- memanggil `Geolocator.isLocationServiceEnabled` (`0xfd63ac`);
- memanggil `LandingController.checkDeviceAndLocation` (`0xfd63d4`);
- memeriksa flag lokasi palsu (`0xfd63f8`–`0xfd6404`);
- jika flag true, menampilkan `alert_fake_location` dan berhenti (`0xfd6420`–`0xfd643c`);
- jika tidak, menavigasi ke `/qr-scanner` (`0xfd647c`).

Tidak ada pemeriksaan peran, tipe pengguna, atau scope pada jalur ini. Pemeriksaan yang ada adalah integritas perangkat/lokasi: `isRealDevice`, flag lokasi palsu yang diisi dari field `Position` `0x57`, dan `SafeDeviceController`. Ini bukan otorisasi.

`/qr-scanner` dipetakan pada `0xd7b4d8`. HomeController juga membangun aksi `QrScanner` untuk item `participant_student` (`0x108bc98`–`0x108bcf4`), sehingga scanner tidak hanya bergantung pada route. Scanner memanggil `AttedenceController.scanEntrant` (`0xd4f850`) dari closure `0xd4d5c4`; gate peran pada menu HomeController tidak dianalisis di sini.

### 2. Pemilihan endpoint

Di `AttedenceController.scanEntrant`, panjang QR dibandingkan dengan `0x25` (37) di `0xd4f8e0`:

- panjang `> 37` menuju `0xd4fa3c`, yang memanggil `AttendanceNetworkImpl.scanEntrant` (`0xd4fc74`);
- panjang `<= 37` memakai jalur presensi pendek yang berbeda.

Di `AttendanceNetworkImpl.scanEntrant`, perbandingan yang sama diulang di `0xd4fd0c`; panjang `> 37` menuju `0xd50adc`. Jalur itu membangun `ScanEntrantParam` (`0xd50b0c`) dan memanggil:

```text
POST https://api.simaster.ugm.ac.id/v1/staff/micro/doscanent
```

Path literal ada di `0xd50b1c`; base URL berasal dari `F::baseUrl()` (`0xd50b00`). Jalur panjang **tidak** memanggil `presensivnext/api/signin` atau `send_peserta` terlebih dahulu. Ia langsung memakai token OAuth yang tersimpan.

### 3. Body dan header

`ScanEntrantParam.toJson` (`0xd51494`) menghasilkan map dengan key persis:

| Key | Nilai yang terlihat |
|---|---|
| `code` | isi QR yang dipindai |
| `latitudeGps` | latitude perangkat |
| `longitudeGps` | longitude perangkat |
| `radius` | `"10"` (hardcoded) |
| `userTipeNomor` | tipe pengguna; fallback `"8"` |
| `identitasId` | ID identitas dari data pengguna |
| `username` | username dari data pengguna |
| `NamaLengkap` | nama lengkap; fallback `"-"` |

Flutterdec 2026-10-28 (run augmented) memulihkan function top-level
`_ScanEntrantParamImplToJson` (ID 20810) yang sebelumnya tidak teremitkan. Pseudo-Dart-nya
memuat delapan key dalam urutan yang sama; crosswalk `poolOff[N]` ke `[pp+0xN]`
me-resolve 8/8 key tersebut. `scanEntrant` (ID 20785) juga kini memanggil converter
itu secara bernama, bukan `fn_0xd51494`. Ini mengonfirmasi **key body** dari jalur
independen, tetapi tidak membuktikan nilai, sumber nilai, atau perilaku server.
Pemetaan pool tetap inferensial dan satu referensi lain di `scanEntrant`
(`0x83d00`) tidak ditemukan.

`BaseNetworkingV2.post` memiliki default `contentType = "application/form-data"` (`0xd50da0`). Karena pemanggil tidak mengoverride ke `application/json`, map dibungkus `FormData.fromMap` (`0xd5101c`). Body dikirim sebagai form fields, bukan JSON mentah.

`BaseNetworkingV2.getHeaders` (`0xd5135c`) membaca `access_token` dari SharedPreferences (`0xd5139c`) dan menambahkan:

- `Authorization: Bearer <access_token>` (`0xd513c4`, `0xd51448`);
- `Content-Type` sesuai parameter (`0xd513fc`);
- `Charset: utf-8` (`0xd51414`);
- `accept: application/json` (`0xd5142c`).

Tidak ada `UGMFWSERVICE` pada jalur V2. Berbeda dari F-05, jalur ini **tidak** memanggil `getValidAccessToken`; token dibaca langsung. Jika token kedaluwarsa, tidak ada refresh yang terlihat di jalur ini.

### 4. Penanganan respons dan anomali UI

`AttendanceNetworkImpl.scanEntrant` mencatat respons sukses (`0xd50b58`) lalu mengembalikan `null` (`0xd50b74`–`0xd50b78`). `AttedenceController.scanEntrant` menerima hasil tersebut di `0xd4fa3c`; karena hasilnya `null`, controller menuju `0xd4fae4` dan mengembalikan `false`.

UI di `qr_scanner.dart` memeriksa hasil `scanEntrant` di `0xd4d5d4`:

- jika hasilnya `true`, UI melanjutkan jalur sukses (`0xd4d7c4`);
- jika bukan `true`, UI membangun `AlertMetronic` dengan `alert_fail_scan` (`0xd4d690`).

Akibatnya, secara statis jalur QR panjang **selalu** menghasilkan `false` di UI setelah network call selesai, termasuk bila server mengembalikan 2xx. Ini adalah bug fungsional/error-handling, bukan bukti bahwa server menolak. Dampak operasionalnya: petugas dapat mengulang scan karena UI mengatakan gagal, padahal aksi pertama mungkin sudah diproses; ini dapat menyebabkan duplikasi atau kebingungan audit. Perilaku server harus direkam pada staging.

### 5. Penilaian otorisasi

Fakta yang mendukung kandidat:

- endpoint berada di prefiks `/v1/staff/`;
- UI yang memanggilnya adalah tab attendance mahasiswa dan kartu `participant_student`;
- production scope list tidak memuat `staff` (lihat bagian cross-cutting);
- body membawa identitas yang dapat diubah client;
- tidak ada pemeriksaan peran di jalur UI yang terpulihkan.

Fakta yang melemahkan klaim BFLA sederhana:

- prefiks path bukan bukti kebijakan server; endpoint dapat sengaja dibuka untuk mahasiswa;
- `participant_student` juga muncul di modul home/other menus, dan HomeController membuka `QrScanner` langsung (`0x108bcf4`), sehingga fitur ini mungkin memang ditujukan untuk mahasiswa;
- tidak ada request yang diamati, sehingga belum diketahui apakah server menerima token mahasiswa;
- scope bukan satu-satunya kontrol; server dapat memakai role, audience, atau aturan event.

Kandidat yang paling kuat adalah **identity/parameter tampering**: bila server memakai `identitasId`, `username`, `NamaLengkap`, atau `userTipeNomor` dari body tanpa membandingkannya dengan token, pemanggil dapat mencoba mengatribusikan aksi ke identitas lain. Ini harus diuji dengan dua akun sintetis dan state server yang dapat diaudit. Kandidat BFLA tetap diuji, tetapi jangan diklaim sebagai temuan pasti.

### 6. Yang belum dibuktikan

- Apakah token mahasiswa diterima oleh `v1/staff/micro/doscanent`.
- Apakah server memeriksa scope `staff` atau role staff.
- Apakah server mengabaikan identitas di body dan memakai identitas token.
- Apakah QR panjang memang tersedia untuk mahasiswa pada event nyata.
- Apakah UI selalu menampilkan gagal pada 2xx dan apakah server tetap mencatat aksi.
- Apakah ada idempotency, replay protection, atau rate limit.

## Cross-cutting

### Scope OAuth production

Authorization URL production dibangun dari 12 scope (`0x8bffc0`–`0x8c0044`):

```text
user.read
user.read-write-update
userDetail.read
student
vehicle.read
mygate.read-write
parent.read
parent.read-write-update
transgama.read
student.read
student.niu.read
student.read-write-update
```

Tidak ada `staff` pada daftar production. Konfigurasi dev yang juga tertanam memuat scope tambahan, termasuk `staff`; ini relevan untuk F-04 dan harus diuji terpisah. Namun scope bukan bukti otorisasi server: server dapat mengabaikan scope, memakai role, atau mengizinkan endpoint tertentu untuk semua token.

### Perbedaan penanganan token

| Jalur | Fungsi header | Refresh? | Header tambahan |
|---|---|---|---|
| F-05 `BaseNetworking` | `getValidAccessToken` | Ya, lewat helper token | `UGMFWSERVICE: 1` |
| F-06 `BaseNetworkingV2` | `getAttribut("access_token")` | Tidak terlihat | Tidak ada |

Kedua jalur memakai Bearer. Perbedaan ini penting untuk staging: token kedaluwarsa dapat menyebabkan F-06 gagal tanpa refresh, sementara F-05 dapat memakai token yang diperbarui.

### Logging

F-05 mencatat seluruh respons `sso response: ` sebelum validasi. F-06 mencatat respons sukses/error dengan prefiks `ini data scanEntrant success: ` dan `ini response error AttendanceNetworkImpl (scanEntrant): `. Jika logging aktif, data akun/scan dapat masuk ke log perangkat atau crash reporting. Ini perlu diverifikasi pada build uji; bukan klaim bahwa log dikirim ke Crashlytics.

## Peta status dan uji

| ID | Status statis | Uji staging |
|---|---|---|
| F-05.1 | Latent; route tidak punya pemanggil statis dan tidak allowlisted | A-02, A-03, A-04 |
| F-05.2 | Kandidat; request memakai Bearer + `UGMFWSERVICE` | A-05 |
| F-05.3 | Observasi desain; password tidak dikirim | Tidak perlu uji jaringan; cukup uji fungsional |
| F-06.1 | Kandidat cross-role; UI mahasiswa dapat memilih endpoint staff | A-06, A-07, A-10 |
| F-06.2 | Kandidat identity tampering | A-08 |
| F-06.3 | Bug fungsional; UI gagal pada jalur panjang | A-11 |
| F-06 replay | Belum diketahui | A-09 |

Rincian langkah, kriteria lulus/gagal, dan stop condition ada di [`API-AUTH-STAGING-TEST-PLAN.md`](API-AUTH-STAGING-TEST-PLAN.md). Jangan menjalankan uji ini pada production.

## Rekomendasi

### Server-side

1. Terapkan pemeriksaan peran/scope eksplisit pada `get_simaster_atribut_by_username` dan `doscanent`; jangan mengandalkan prefiks path.
2. Untuk F-05, tolak lookup username yang berbeda dari identitas token, atau batasi endpoint ke role staff dan gunakan parameter yang tidak dapat dienumerasi.
3. Untuk F-06, derive identitas peserta dari token/QR yang ditandatangani server; jangan percaya `identitasId`, `username`, `NamaLengkap`, atau `userTipeNomor` dari body.
4. Ikat QR ke event, peserta, waktu, dan nonce; tolak replay dan permintaan di luar jendela event.
5. Tambahkan idempotency key/audit log untuk scan, dan rate limit per token/perangkat.
6. Kembalikan status yang konsisten untuk lookup F-05; jangan memakai 400 sebagai sinyal sukses tanpa kontrak yang jelas.
7. Redaksi log respons dan jangan kirim PII/token ke crash reporting.
8. Rotasi/revoke kredensial yang terekspos dan batasi scope production; hapus konfigurasi dev dari build production.

### Client-side

1. Hapus route `/auth` dan kode lookup yang tidak dipakai, atau hubungkan ke alur yang jelas dengan kontrol otorisasi.
2. Jangan meminta password bila tidak dikirim/diverifikasi; jika password diperlukan, gunakan autentikasi server yang benar.
3. Hentikan pengiriman identitas dari client; gunakan identitas yang diturunkan server dari token.
4. Perbaiki penanganan hasil `doscanent`: bedakan sukses jaringan, sukses aplikasi, dan kegagalan; jangan menampilkan `alert_fail_scan` untuk respons 2xx.
5. Jangan mencatat respons penuh atau data scan; gunakan metadata yang telah diredaksi.
6. Gunakan `getValidAccessToken` atau mekanisme refresh yang konsisten pada V2, dengan penanganan 401 yang aman.
7. Gunakan secure storage untuk token dan hapus konfigurasi dev/Postman dari build produksi.

## Peta bukti

| Pertanyaan | Jawaban statis | Alamat |
|---|---|---|
| Route `/auth` | `AuthView` | `0xd7a1a0`, closure `0xd7ebe4` |
| Pemanggil `/auth` | Tidak ditemukan selain registrasi | pencarian string `/auth` |
| Form F-05 | username `field_1b`, password `field_1f` | `0xfd9ac0`, `0xfd9ac8` |
| Password dibaca controller? | Tidak | `0xfd9f6c` hanya `field_1b` |
| Body F-05 | `micro=staff`, service lookup, `param` username + `"8"` | `0xfda1b8`–`0xfda1e4` |
| Path F-05 | `staff` | `0xfda200` |
| Base URL production | `https://api.simaster.ugm.ac.id/` | `0x91d52c` |
| Envelope F-05 | `json1` + base64url `json` | `0x8ec794`–`0x8ec7d8` |
| Header F-05 | Bearer, JSON, `UGMFWSERVICE` | `0x912a50`–`0x912ae0` |
| Respons F-05 | status 400, `res`, `is_active`, `user_tipe_nomor` | `0xfda27c`–`0xfda420` |
| Efek F-05 | simpan `user_number_type`, ke `/landing` | `0xfd9fc4`, `0xfda6fc` |
| Tab attendance | `AttedenceView` langsung | `0x1014008` |
| Kartu scanner | `participant_student` → `/qr-scanner` | `0xfd5f58`, `0xfd6370`, `0xfd647c` |
| Scanner dari Home | HomeController membangun `QrScanner` | `0x108bc98`–`0x108bcf4` |
| Gate scanner | fake-location/device, bukan role | `0xfd63d4`–`0xfd643c` |
| Ambang QR | `> 37` | `0xd4f8e0`, `0xd4fd0c` |
| Path F-06 | `v1/staff/micro/doscanent` | `0xd50b1c` |
| Body F-06 | delapan field, termasuk identitas; dikonfirmasi flutterdec ID 20810 | `0xd51494`–`0xd5157c` |
| Envelope F-06 | FormData karena default `application/form-data` | `0xd50da0`, `0xd5101c` |
| Header F-06 | Bearer dari `access_token`, tanpa `UGMFWSERVICE` | `0xd5139c`–`0xd51450` |
| Hasil F-06 | network `null` → controller `false` → `alert_fail_scan` | `0xd50b74`, `0xd4fa3c`, `0xd4d5d4` |
| Allowlist | `/auth`, `/attedence`, `/qr-scanner` tidak ada | constructor `0xeb03e4`–`0xeb050c` |

## Batas interpretasi

- Alamat dan field berasal dari rekonstruksi Blutter; urutan/offset dapat berbeda pada build lain.
- Tidak ada bukti runtime bahwa route `/auth` dapat dibuka, bahwa QR panjang tersedia, atau bahwa server menerima request.
- Tidak ada bukti bahwa `doscanent` adalah endpoint staff-only atau student-allowed; pengujian peran diperlukan.
- Tidak ada bukti bahwa `IdentitasId` berasal dari user saat ini versus data QR; analisis staging harus mencatat nilai aktualnya.
- Crosswalk `poolOff[N]` ke `[pp+0xN]` hanya diuji pada function terpilih dan tidak didokumentasikan flutterdec; satu referensi `scanEntrant` tidak ditemukan. Jangan memperlakukan pemetaan ini sebagai kontrak stabil antar-build.
- Status 400 pada F-05 dan `null` pada F-06 adalah perilaku statis yang mengejutkan; keduanya harus diverifikasi dengan capture, bukan diasumsikan sebagai perilaku production.
- Laporan ini tidak memuat token, secret, atau PII. Untuk reproduksi, gunakan artefak privat dan izin tertulis.
