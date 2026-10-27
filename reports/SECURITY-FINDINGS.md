# Temuan keamanan statis — Simaster UGM Student vNEXT

- **Target:** `id.ac.ugm.student.vnext.simaster` 1.11.1 (code 65)
- **Input utama:** `libapp.so` ARM64, SHA-256 `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290`
- **Sifat laporan:** analisis statis APK/XAPK; tidak ada aplikasi yang dijalankan dan tidak ada request yang dikirim ke server. Semua temuan berstatus **kandidat** sampai diverifikasi pada lingkungan uji yang berizin.

> **Peringatan:** jangan menguji temuan ini terhadap sistem produksi UGM tanpa izin tertulis. Nilai rahasia yang disebut di bawah sengaja tidak disalin; nilai penuh tetap berada di artefak privat [`analysis-results.zip`](../analysis-results.zip).

## Ringkasan eksekutif

| ID | Area | Temuan | Dampak potensial | Status |
|---|---|---|---|---|
| F-01 | Presensi | Password presensi diturunkan secara deterministik dari username + tanggal + salt statis, lalu diobfuskasi dengan `_enc`; kredensial Basic client juga hardcoded | Pembuatan kredensial presensi tanpa password UGM; penyalahgunaan token presensi jika server menerima model ini | Kandidat; belum diuji ke server |
| F-02 | OAuth | Client secret tertanam; tidak ada PKCE/`state`; redirect custom scheme dan validasi substring; payload sensitif ke Crashlytics saat error | Code interception/login CSRF, penyalahgunaan secret, kebocoran code/secret | Deep dive statis selesai; kandidat; uji staging belum |
| F-03 | Penyimpanan token | Token disimpan di SharedPreferences tanpa enkripsi aplikasi | Token dapat dibaca pada perangkat yang di-root/backup | Kandidat; perlu validasi perangkat |
| F-04 | Konfigurasi dev | Flavor dev memiliki scope tambahan dan redirect Postman | Permukaan serangan lebih luas bila build dev tersebar | Kandidat; belum ada build dev yang dianalisis runtime |
| F-05 | Otorisasi API / lookup akun | `/auth` memanggil lookup `staff/get_simaster_atribut_by_username` hanya dengan username dan nilai `"8"`; password divalidasi form tetapi tidak dikirim; route tidak punya pemanggil statis dan tidak allowlisted | Enumerasi/status akun bila route dapat dicapai dengan token valid | Deep dive statis selesai; **latent**, bukan pre-auth; uji A-02–A-05 |
| F-06 | Otorisasi API | Alur mahasiswa dapat memilih `v1/staff/micro/doscanent`; body membawa identitas client; QR panjang selalu tampil gagal di UI | BFLA/cross-role dan identity/parameter tampering bila server tidak memeriksa peran/token | Deep dive statis selesai; kandidat; uji A-06–A-11 |

Fokus laporan ini adalah **F-01**, ringkasan **F-02**, dan ringkasan **F-05/F-06**. F-02 dianalisis mendalam di [`OAUTH-DEEP-DIVE.md`](OAUTH-DEEP-DIVE.md) dengan rencana uji berizin di [`OAUTH-STAGING-TEST-PLAN.md`](OAUTH-STAGING-TEST-PLAN.md). F-05/F-06 dianalisis di [`API-AUTH-DEEP-DIVE.md`](API-AUTH-DEEP-DIVE.md) dengan rencana uji di [`API-AUTH-STAGING-TEST-PLAN.md`](API-AUTH-STAGING-TEST-PLAN.md); F-03–F-04 tetap ringkas. Tidak ada klaim eksploitasi.

## Metode dan batasan

- Artefak: XAPK 1.11.1, `libapp.so` ARM64, output Blutter (asm Dart AOT), Ghidra 12.1.4, dan JADX 1.5.6.
- Alamat di laporan ini adalah **alamat Blutter** (file-backed). Alamat Ghidra = alamat Blutter + `0x100000`, sesuai [`GHIDRA-ANALYSIS.md`](GHIDRA-ANALYSIS.md).
- Bukti utama F-01 berasal dari entry `analysis-results.zip`:
  - `blutter-output/asm/simaster_ugm/app/modules/attedence/data/data_source/network/attendance_network_impl.dart`
  - `blutter-output/pp.txt`
- Tidak ada eksekusi aplikasi, hook, instrumentation, atau traffic capture. Karena itu, laporan tidak menyatakan bahwa server menerima password turunan, bahwa token dapat dipakai, atau bahwa dampak tertentu sudah terbukti.
- Istilah **kandidat** berarti “konsisten dengan kode statis, tetapi belum diverifikasi pada runtime/server”.

## F-01 — Model kredensial presensi

### 1. Alur yang terlihat

Fungsi `AttendanceNetworkImpl::scanEntrant` (Blutter `0xd4fc74`, ukuran `0x10d8`) membangun kredensial presensi sebagai berikut:

```text
user_username (SharedPreferences)
        │
        ▼
"*_" + username + SALT + "YYYY-MM-DD" + "_#"
        │
        ▼
UTF-8 → Base64 standar
        │
        ▼
"+"→"."  "/"→"_"  "="→"-"
        │
        ▼
substring(66,160), (43,132), (26,86), (0,52), (80,end)
        │
        ▼
password = p5 + p4 + p3 + p2 + p1
        │
        ▼
POST /presensivnext/api/signin
Authorization: Basic <client_id:client_secret>
FormData: username=<username>&password=<password>
```

Respons JSON diambil field `token` (`0xd503fc`) lalu dipakai sebagai `Bearer <token>` pada alur presensi berikutnya, termasuk `send_peserta` (`0xd50708`). Alur `doscanent` (`0xd50b1c`) terlihat memakai jalur OAuth terpisah; keduanya berada di fungsi yang sama dan perlu dipisahkan dengan uji runtime.

### 2. Bukti statis

| Klaim | Alamat / bukti |
|---|---|
| Fungsi alur presensi | `0xd4fc74` — `scanEntrant` |
| Username dari SharedPreferences | `0xd4fd9c` memuat key `"user_username"`; fallback ke `param_2->field_1f` di `0xd4fdc0` |
| Tanggal lokal | `0xd4fe48` mengalokasikan `DateTime` dengan `isUtc=false` (`0xd4fe50`) |
| Tahun `padLeft(4, "0")` | `0xd4ff00`–`0xd4ff10` |
| Bulan `padLeft(2, "0")` | `0xd4ffc0`–`0xd4ffd0` |
| Hari `padLeft(2, "0")` | `0xd50080`–`0xd50090` |
| Date string `YYYY-MM-DD` | `0xd500cc` memanggil `_interpolate` pada array tahun/bulan/hari |
| Salt statis | object pool `pp+0x83d18` = `_Ini_Adalah_Password_#_Login_*_JWT_Username_Ku_` (47 karakter) |
| Template password | array 5 elemen di `0xd500e0`: `"*_"`, username, salt, tanggal, `"_#"`; `_interpolate` di `0xd50124` |
| `_enc` | `0xd51f2c`, ukuran `0x128` |
| Base64 standar | `0xd51f54`–`0xd51f58` (`Base64Codec::encode`) |
| Replace `+`→`.` | `0xd51f60`–`0xd51f68` |
| Replace `/`→`_` | `0xd51f70`–`0xd51f78` |
| Replace `=`→`-` | `0xd51f80`–`0xd51f88` |
| Substring pertama | `substring(66, 160)` di `0xd51f90`–`0xd51fa4` |
| Substring kedua | `substring(43, 132)` di `0xd51fac`–`0xd51fc0` |
| Substring ketiga | `substring(26, 86)` di `0xd51fd4`–`0xd51fe8` |
| Substring keempat | `substring(0, 52)` di `0xd51ffc`–`0xd52010` |
| Substring kelima | `substring(80)` di `0xd52020`–`0xd52030` |
| Urutan akhir | prepend `p2+p1`, lalu `p3+hasil`, `p4+hasil`, `p5+hasil` di `0xd51fc4`–`0xd5203c`; hasil `p5+p4+p3+p2+p1` |
| Basic client credential | object pool `pp+0x83d28`; nilai penuh **tidak disalin** di laporan ini |
| Header Basic | `0xd501f0` (`"Basic "`), `0xd50200` (credential), `0xd50214` (`base64Encode`) |
| Endpoint signin | `0xd502c4` — `https://simaster.ugm.ac.id/presensivnext/api/signin` |
| Respons `token` | `0xd503fc` |
| Bearer token | `0xd50478` (`"Bearer "` + token) |
| Endpoint `send_peserta` | `0xd50708` — `https://simaster.ugm.ac.id/presensivnext/api/send_peserta` |
| Endpoint `doscanent` | `0xd50b1c` — `v1/staff/micro/doscanent` |

Bukti object pool di atas dapat dilihat pada `analysis-results.zip` entry `blutter-output/pp.txt`. Nilai Basic credential di `pp+0x83d28` berbentuk `client_id:client_secret`; nilainya sengaja diganti `[REDACTED]` di dokumen ini.

### 3. Rekonstruksi `_enc`

Pseudocode yang setara dengan urutan instruksi:

```text
function enc(plaintext):
    b64 = base64_standard(utf8(plaintext))
    b   = b64.replace("+", ".").replace("/", "_").replace("=", "-")

    p1 = b[66:160]
    p2 = b[43:132]
    p3 = b[26:86]
    p4 = b[0:52]
    p5 = b[80:]

    return p5 + p4 + p3 + p2 + p1
```

Contoh dengan username dummy `example.user` dan tanggal `2026-10-27`:

```text
plaintext = *_example.user_Ini_Adalah_Password_#_Login_*_JWT_Username_Ku_2026-10-27_#
base64    = Kl9leGFtcGxlLnVzZXJfSW5pX0FkYWxhaF9QYXNzd29yZF8jX0xvZ2luXypfSldUX1VzZXJuYW1lX0t1XzIwMjYtMTAtMjdfIw==
transformed = Kl9leGFtcGxlLnVzZXJfSW5pX0FkYWxhaF9QYXNzd29yZF8jX0xvZ2luXypfSldUX1VzZXJuYW1lX0t1XzIwMjYtMTAtMjdfIw--
```

Karena base64 di atas hanya 100 karakter, `substring(66,160)` **tidak valid** untuk username sependek itu. Ini dibahas di bagian 4.

### 4. Anomali panjang input (temuan fungsional)

Offset `substring(66, 160)` membutuhkan string base64 minimal **160 karakter**. Dengan salt 47 karakter, prefix/suffix 4 karakter, dan tanggal 10 karakter:

```text
plaintext minimal = 118 byte
username minimal  = 118 - (2 + 47 + 10 + 2) = 57 karakter (ASCII)
```

Untuk username ASCII 12–30 karakter, base64 hanya sekitar 100–124 karakter, sehingga kode yang direkonstruksi akan melempar `RangeError` sebelum request dikirim. Username non-ASCII dapat memenuhi batas byte dengan jumlah karakter lebih sedikit. Kemungkinan penjelasan:

1. username produksi memang lebih panjang dari asumsi;
2. ada komponen plaintext tambahan yang tidak terlihat pada listing Blutter;
3. jalur ini tidak pernah dipakai pada build produksi (dead/legacy path);
4. rekonstruksi Blutter/Ghidra belum lengkap pada bagian tersebut.

Konsekuensi:

- Secara keamanan, ini **bukan** bukti bahwa presensi gagal; ini adalah inkonsistensi statis yang perlu diuji.
- Secara fungsional, ini kandidat **DoS lokal**: bila username normal, alur scan dapat gagal dengan exception sebelum request.
- PoC di repo karena itu memiliki dua mode:
  - **strict** (default): menolak input yang tidak memenuhi offset asli;
  - **`--allow-short`**: melakukan clamp untuk demonstrasi transform, dan hasilnya ditandai sebagai `lenient-demonstration`, bukan jalur kode yang teramati.

### 5. Dampak keamanan (kondisional)

Jika server menerima password turunan ini sebagai bukti autentikasi:

- **Tidak ada rahasia pengguna pada password.** Salt, template, dan algoritma semuanya ada di APK. Siapa pun yang memiliki APK dapat menghitung password untuk username dan tanggal tertentu.
- **Basic client credential dapat diekstrak.** Nilai `client_id:client_secret` ada di object pool; rotasi dapat membatalkan nilai lama, tetapi nilai baru tetap dapat diambil dari APK.
- **Tanggal hanya memberi rotasi harian.** Penyerang yang mengetahui username dapat menghitung nilai hari ini/kemarin/besok secara offline; tidak perlu password UGM.
- **Username sering dapat ditebak/dienumerasi.** NIM/email UGM memiliki pola; endpoint `get_simaster_atribut_by_username` juga menjadi kandidat enumerasi (F-05).
- **Token presensi dapat disalahgunakan** untuk `send_peserta`/aksi presensi lain bila otorisasi server hanya berbasis token tersebut. Ini belum diverifikasi.
- **Audit menjadi lemah** bila server tidak membedakan sesi yang berasal dari aplikasi resmi dan derivasi offline.

Yang **belum** dibuktikan:

- apakah server menerima password hasil `_enc` untuk username nyata;
- apakah Basic credential masih aktif;
- apakah token hasil signin memiliki scope yang cukup untuk aksi tertentu;
- apakah ada rate limit, device binding, atau pemeriksaan tambahan di server;
- apakah username produksi panjangnya ≥57 karakter.

### 6. Verifikasi yang diusulkan (staging, berizin)

1. Siapkan akun uji dan endpoint staging yang disetujui UGM; jangan memakai akun mahasiswa nyata.
2. Bandingkan password yang dihitung PoC strict/lenient dengan password yang dikirim aplikasi versi uji (proxy lokal/instrumentasi terkendali).
3. Uji username pendek, username panjang, pergantian tanggal, dan perbedaan timezone di sekitar tengah malam.
4. Periksa di log server: apakah signin menerima password turunan, apakah token yang keluar berbeda dari token OAuth, dan apakah `send_peserta` memeriksa peran/identitas.
5. Uji apakah Basic credential dapat dipakai tanpa aplikasi dan apakah ada pembatasan per device/IP.
6. Dokumentasikan hasilnya sebagai **tervalidasi** atau **tidak tervalidasi**; jangan mengubah status berdasarkan asumsi.

## F-02 — OAuth (deep dive)

Deep dive statis memverifikasi alur production: custom tabs, authorization code tanpa PKCE, redirect custom scheme, token exchange dengan client secret, penyimpanan token, refresh, dan jalur error. Tidak ada request yang dikirim; status tetap kandidat.

| ID | Temuan | Status |
|---|---|---|
| F-02.1 | Tidak ada `state` pada authorization request dan tidak ada validasi `state` pada redirect | Kandidat; uji O-02 |
| F-02.2 | Tidak ada PKCE; client secret tertanam dan dikirim di body + Basic auth | Kandidat; uji O-03 |
| F-02.3 | Redirect diverifikasi dengan `contains` (`redirectUri`, `oauth2`, `login-callback`), bukan exact match; `MainActivity` exported dengan custom scheme | Kandidat; uji O-04 |
| F-02.4 | Pada token exchange non-200, `request_headers` dan `request_body` dikirim ke Crashlytics tanpa redaksi | Kandidat; uji O-05 |
| F-02.5 | Token disimpan di SharedPreferences biasa | Kandidat; cross-ref F-03, uji O-06 |
| F-02.6 | JWT hanya di-decode; tidak ada verifikasi signature/issuer/audience | Kandidat; uji O-07 |
| F-02.7 | Konfigurasi dan secret dev/staging tetap ada di binary production | Kandidat; cross-ref F-04, uji O-08 |
| F-02.8 | Hardening: AppAuth activities exported, `usesCleartextTraffic=true`, scope write lebar, error `access_denied` tidak ditangani | Hardening; uji O-09/O-10/O-12 |

Bukti utama:

- Production dipilih oleh `main_production.dart` (`0x13e5414`) dan `configOauth()` cabang production (`0x8c0368`); authorization URL di `0x8c0410` hanya memuat `response_type`, `client_id`, `redirect_uri`, dan `scope`.
- Client secret production tertanam di `flavors.dart` `0x8c03a4` (fingerprint `THFn…7DD`); secret dev juga tertanam.
- Token request `exchangeCodeForToken` (`0x8e3834`) memuat `client_secret` dan Basic auth; tidak ada `code_verifier`.
- `_handleRedirectUri` (`0x8df054`) memakai tiga pemeriksaan `contains` dan hanya membaca `queryParameters['code']`; tidak ada `state`/`error`.
- Crashlytics custom keys production (`0x8e5404`–`0x8e5628`) mengirim `request_headers`/`request_body`; `stringifyRequestBody` (`0x8e8050`) memakai `jsonEncode` tanpa redaksi.
- Token disimpan lewat `SharedPreferencesService.saveData` (`0x920b74`); JWT di-decode (`0x8e4654`) tanpa verifikasi.

Rincian alamat, bukti, dampak, dan batasan ada di [`OAUTH-DEEP-DIVE.md`](OAUTH-DEEP-DIVE.md). Langkah verifikasi berizin ada di [`OAUTH-STAGING-TEST-PLAN.md`](OAUTH-STAGING-TEST-PLAN.md). Jangan menguji produksi; semua uji memerlukan staging, akun uji, dan izin tertulis.

## F-03–F-04 — Kandidat lain (ringkas)

| ID | Bukti statis | Mengapa perlu deep dive |
|---|---|---|
| F-03 | Token disimpan di SharedPreferences dengan key `access_token`, `refresh_token`, `access_token_expiration_unix`, `refresh_token_expiration_unix` | Backup/root dapat membaca token; perlu validasi pada perangkat uji dan kebijakan backup |
| F-04 | `flavors.dart` memuat konfigurasi dev/prod; dev memakai redirect Postman dan scope tambahan (`staff`, `pegawai.all.read`, `tte`, `ldap`) | Build dev yang tersebar dapat memperluas permukaan serangan; perlu memastikan build produksi tidak memuat konfigurasi dev |

## F-05–F-06 — Otorisasi API (deep dive)

Koreksi penting: **F-05 bukan pre-auth.** `/auth` terdaftar sebagai route, tetapi tidak ditemukan pemanggil statis ke sana dan `/auth` tidak ada di allowlist `SessionMiddleware`. Controller F-05 juga memakai Bearer dari `getValidAccessToken`. Dengan demikian statusnya **latent, session-gated**, bukan bypass login. F-05 adalah lookup akun, bukan autentikasi; password divalidasi di form tetapi tidak dikirim ke server.

F-06 lebih kuat untuk reachability. Tab attendance di `LandingView` membangun `AttedenceView` langsung, dan kartu `participant_student` menavigasi ke `/qr-scanner`. Pemeriksaan yang terlihat adalah integritas perangkat/lokasi palsu, bukan peran. QR dengan panjang lebih dari 37 karakter memilih `v1/staff/micro/doscanent` dan mengirim identitas dari client. Ini adalah kandidat cross-role/BFLA dan identity tampering; belum ada bukti server menerima token mahasiswa atau memakai identitas body.

| ID | Fakta statis | Status | Uji |
|---|---|---|---|
| F-05.1 | Lookup hanya username + `"8"`; respons memakai `res`, `is_active`, `user_tipe_nomor`; tidak menyimpan token | Latent; route tanpa pemanggil statis | A-02–A-04 |
| F-05.2 | Request memakai `BaseNetworking`, Bearer, dan `UGMFWSERVICE: 1` | Kandidat role/scope | A-05 |
| F-05.3 | Password divalidasi form tetapi tidak dibaca controller dan tidak ada di request | Observasi desain/legacy | Fungsional |
| F-06.1 | UI mahasiswa dapat memilih endpoint `v1/staff/micro/doscanent`; scope production tidak memuat `staff` | Kandidat cross-role | A-06, A-07, A-10 |
| F-06.2 | Body mengirim `identitasId`, `username`, `NamaLengkap`, `userTipeNomor` | Kandidat identity tampering | A-08 |
| F-06.3 | Jalur QR panjang mengembalikan `null` → controller `false` → `alert_fail_scan` | Bug fungsional; risiko retry/duplikasi | A-11 |

Rincian alamat, envelope, dan batas interpretasi ada di [`API-AUTH-DEEP-DIVE.md`](API-AUTH-DEEP-DIVE.md). Langkah uji berizin, matriks peran, evidence, dan stop condition ada di [`API-AUTH-STAGING-TEST-PLAN.md`](API-AUTH-STAGING-TEST-PLAN.md). Jangan menguji production; semua uji memerlukan staging, akun sintetis, dan izin tertulis.

## Rekomendasi

### Server-side (prioritas)

1. Hentikan penerimaan password yang diturunkan client; gunakan token per pengguna yang berumur pendek dan diterbitkan setelah autentikasi yang kuat.
2. Rotasi Basic client credential presensi; jangan menjadikannya satu-satunya kontrol client.
3. Ikat aksi presensi ke challenge yang diterbitkan server (QR sesi, nonce, tanda tangan) dan verifikasi identitas/peran di server.
4. Validasi `username` vs token sesi, `identitas_id`, dan `device_id` di server; jangan percaya payload client.
5. Tambahkan rate limit, audit log, dan deteksi penggunaan credential dari device/IP yang tidak wajar.
6. Terapkan otorisasi per peran pada `doscanent` dan endpoint `micro`/`service`; uji dengan akun mahasiswa/staff.
7. Tegakkan exact redirect URI dan PKCE S256 untuk client OAuth; tolak token exchange tanpa `code_verifier` yang cocok.
8. Jangan mengandalkan client secret yang tertanam sebagai autentikasi client; rotasi/revoke secret yang terekspos dan batasi scope.
9. Untuk F-05, batasi lookup username ke role staff atau pemilik token; jangan mengembalikan status/tipe akun untuk username lain.
10. Untuk F-06, turunkan identitas peserta dari token/QR yang ditandatangani server; tambahkan idempotency, binding event, dan perlindungan replay.

### Client-side

1. Hapus `client_secret` dari aplikasi mobile dan hentikan grant yang memerlukannya; gunakan public client + PKCE atau backend-for-frontend.
2. Buat `state` acak minimal 128-bit, simpan sementara, dan validasi exact saat redirect; tolak missing/mismatch.
3. Terapkan PKCE S256 dan exact redirect URI; ganti custom scheme dengan Android App Links bila memungkinkan, dan hapus pemeriksaan `contains`.
4. Redaksi Crashlytics: jangan kirim `Authorization`, body mentah, `client_secret`, atau code; gunakan allowlist metadata.
5. Gunakan secure storage (Keystore/EncryptedSharedPreferences) untuk token, bukan SharedPreferences biasa.
6. Hapus konfigurasi dev/Postman dan secret dev dari build produksi; rotasi kredensial yang pernah tertanam.
7. Verifikasi JWT (signature/issuer/audience) atau jangan gunakan klaim untuk keputusan lokal; server tetap harus memvalidasi token.
8. Hapus/disable AppAuth activities yang tidak dipakai, set `usesCleartextTraffic=false`, dan pastikan log debug tidak mencetak code/token/secret.
9. Jangan menurunkan password dari username/tanggal/salt statis; gunakan server-issued per-user credential.
10. Hapus route `/auth` dan lookup yang tidak dipakai, atau hubungkan ke alur dengan kontrol otorisasi yang jelas; jangan meminta password bila tidak dikirim.
11. Hentikan pengiriman identitas dari client dan perbaiki penanganan hasil `doscanent`: 2xx tidak boleh menampilkan `alert_fail_scan`.

### Proses

- Koordinasikan disclosure dengan UGM; berikan waktu perbaikan sebelum publikasi.
- Jangan menguji produksi tanpa izin. Gunakan staging dan akun uji.
- Redaksi nilai rahasia pada dokumen yang dibagikan; nilai penuh tetap di repo privat/artefak terbatas.

## Lampiran A — PoC offline

Script: [`scripts/presensi_credential_model.py`](../scripts/presensi_credential_model.py)

```bash
# Self-test jalur strict dengan username sintetis 60 karakter
python3 scripts/presensi_credential_model.py --selftest

# Username pendek: mode strict akan menolak (sesuai offset asli)
python3 scripts/presensi_credential_model.py \
  --username example.user --date 2026-10-27

# Demonstrasi lenient (hasil bukan jalur kode asli)
python3 scripts/presensi_credential_model.py \
  --username example.user --date 2026-10-27 --allow-short --json
```

Contoh output lenient ada di [`presensi-credential-model.example.json`](presensi-credential-model.example.json). Script tidak memiliki kode jaringan dan tidak mengirim data ke mana pun.

## Lampiran B — Peta bukti

| Pertanyaan | Jawaban statis | Lokasi |
|---|---|---|
| Dari mana username diambil? | `SharedPreferencesService.getData("user_username")`; fallback ke field `username` pada parameter scan | `0xd4fd9c`, `0xd4fdc0` |
| Bagaimana tanggal dibentuk? | `DateTime` lokal, `YYYY-MM-DD` dengan `padLeft` | `0xd4fe48`–`0xd500cc` |
| Apa template password? | `*_{username}{salt}{YYYY-MM-DD}_#` | array `0xd500e0`–`0xd50124` |
| Bagaimana obfuskasi? | Base64 → replace → substring → reorder | `_enc` `0xd51f2c`–`0xd52048` |
| Apa kredensial client? | `client_id:client_secret` di object pool, dikirim sebagai Basic | `pp+0x83d28`, `0xd501f0`–`0xd50214` |
| Ke mana dikirim? | `POST /presensivnext/api/signin` | `0xd502c4` |
| Apa yang dipakai dari respons? | field `token`, lalu `Bearer` | `0xd503fc`, `0xd50478` |
| Aksi terkait? | `send_peserta` (Bearer presensi), `doscanent` (OAuth) | `0xd50708`, `0xd50b1c` |

## Lampiran C — Batas interpretasi

- Rekonstruksi `_enc` mengikuti urutan instruksi Blutter; urutan `String.+` diturunkan dari pola prepend dan konsisten dengan urutan operand `_StringBase::+` pada modul lain (mis. `dio/src/options.dart`), tetapi belum diuji dengan runtime Dart.
- Offset substring adalah nilai literal; tidak ada bukti bahwa server memakai aturan yang sama.
- Panjang username produksi tidak diketahui; anomali 160 karakter adalah konsekuensi matematis dari kode yang terlihat, bukan klaim bahwa semua pengguna gagal.
- Semua alamat adalah alamat statis; tidak ada observasi runtime.
- Laporan ini tidak memuat nilai rahasia penuh. Untuk reproduksi, gunakan artefak privat dan izin yang sesuai.

## Lampiran D — Referensi

- [`ANALYSIS.md`](ANALYSIS.md) — identitas paket, izin, dan provenance.
- [`FEATURE-MAP.md`](FEATURE-MAP.md) — route dan service statis.
- [`GHIDRA-AOT-SELECTED.md`](GHIDRA-AOT-SELECTED.md) — metode decompile Ghidra.
- [`GHIDRA-APP-DECOMPILE.md`](GHIDRA-APP-DECOMPILE.md) — cakupan function start paket aplikasi dan batas full binary.
- [`GHIDRA-FULL-DECOMPILE.md`](GHIDRA-FULL-DECOMPILE.md) — cakupan dan caveat.
- [`OAUTH-DEEP-DIVE.md`](OAUTH-DEEP-DIVE.md) — analisis OAuth F-02.
- [`OAUTH-STAGING-TEST-PLAN.md`](OAUTH-STAGING-TEST-PLAN.md) — rencana uji OAuth O-01–O-13.
- [`API-AUTH-DEEP-DIVE.md`](API-AUTH-DEEP-DIVE.md) — analisis otorisasi API F-05/F-06.
- [`API-AUTH-STAGING-TEST-PLAN.md`](API-AUTH-STAGING-TEST-PLAN.md) — rencana uji API A-01–A-13.
- [`analysis-results.zip`](../analysis-results.zip) — output Blutter/JADX tersanitasi; berisi asm dan `pp.txt`.
