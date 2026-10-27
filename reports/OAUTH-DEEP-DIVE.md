# OAuth deep dive — alur otorisasi Simaster UGM Student vNEXT

- **Target:** `id.ac.ugm.student.vnext.simaster` 1.11.1 (code 65)
- **Input utama:** `libapp.so` ARM64, SHA-256 `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290`
- **Sifat laporan:** analisis statis AOT/Blutter dan manifest. Tidak ada aplikasi yang dijalankan, tidak ada request yang dikirim ke server, dan tidak ada traffic capture. Semua temuan berstatus **kandidat** sampai diuji pada staging yang berizin.
- **Lingkup:** verifikasi parameter `state`, PKCE, redirect URI, pertukaran code, penyimpanan token, refresh token, dan jalur error. Laporan ini tidak mengklaim eksploitasi.

> **Peringatan:** jangan menguji temuan ini ke sistem produksi UGM tanpa izin tertulis. Nilai rahasia penuh tidak disalin ke laporan ini; nilai penuh tetap ada di artefak privat [`analysis-results.zip`](../analysis-results.zip) dan di pohon analisis lokal. Laporan ini memakai fingerprint dan alamat sebagai bukti.

## Ringkasan eksekutif

Alur production memakai **Authorization Code tanpa PKCE** dan **tanpa parameter `state`**. Aplikasi juga menyimpan **client secret** di binary, mengirimkannya dua kali pada token request (Basic auth dan body), menerima redirect pada **custom scheme** yang exported, lalu menyimpan token di **SharedPreferences biasa**. Pada kegagalan token exchange, aplikasi mengirim header dan body request—termasuk Basic credential dan `client_secret`—ke Crashlytics sebagai custom keys.

| ID | Temuan | Dampak potensial | Keyakinan | Status |
|---|---|---|---|---|
| F-02.1 | Tidak ada `state` pada authorization request dan tidak ada validasi `state` pada redirect | Login CSRF/session swapping; code milik akun penyerang dapat diproses sebagai sesi korban | Tinggi untuk fakta statis; sedang untuk dampak | Kandidat; perlu uji staging |
| F-02.2 | Tidak ada PKCE (`code_challenge`/`code_verifier`) dan client secret tertanam di APK | Code interception/replay bila code dapat dicegat; secret dapat diekstrak dari APK | Tinggi untuk fakta statis; sedang untuk dampak | Kandidat; perlu uji staging |
| F-02.3 | Redirect diverifikasi dengan `contains` (redirect URI, `oauth2`, atau `login-callback`), bukan exact match; `MainActivity` exported dengan custom scheme | Code injection melalui URI yang mengandung string yang diterima; custom scheme dapat diperebutkan aplikasi lain | Sedang–tinggi | Kandidat; perlu uji staging |
| F-02.4 | Pada token exchange non-200, `request_headers` dan `request_body` dikirim ke Crashlytics tanpa redaksi | Basic credential, `client_secret`, dan authorization code bocor ke layanan crash reporting | Tinggi untuk fakta statis; sedang untuk paparan aktual | Kandidat; perlu uji staging |
| F-02.5 | Token disimpan di SharedPreferences biasa | Token dapat dibaca pada perangkat rooted/forensik; backup dikurangi oleh `allowBackup=false` | Tinggi untuk fakta statis | Kandidat; cross-ref F-03 |
| F-02.6 | JWT hanya di-decode; tidak ada verifikasi signature/issuer/audience | Klaim identitas dapat dipalsukan bila token response dapat dimodifikasi | Sedang untuk fakta statis; rendah–sedang untuk dampak | Kandidat; perlu uji lab |
| F-02.7 | Konfigurasi dan secret dev/staging tetap ada di binary production | Kredensial dev dapat diekstrak; bila masih aktif, dapat dipakai ke server dev | Tinggi untuk fakta statis; validitas belum diketahui | Kandidat; cross-ref F-04 |
| F-02.8 | Hardening: AppAuth activities exported, `usesCleartextTraffic=true`, scope write yang lebar, error `access_denied` tidak ditangani | Permukaan serangan tambahan; dampak belum terbukti | Rendah | Hardening; perlu uji terbatas |

**Kesimpulan singkat:** kontrol OAuth yang paling penting—`state` dan PKCE—tidak ada. Redirect handling juga tidak exact. Ini cukup untuk mengangkat F-02 dari “kandidat” menjadi **kandidat prioritas tinggi** untuk diuji di staging, tetapi belum menjadi bukti eksploitasi.

## Metode dan batas

- Sumber utama: output Blutter (`asm/simaster_ugm/...`), object pool `pp.txt`, manifest hasil decode, dan output Ghidra.
- Alamat di laporan ini adalah **alamat Blutter** (file-backed). Alamat Ghidra = alamat Blutter + `0x100000`, sesuai [`GHIDRA-ANALYSIS.md`](GHIDRA-ANALYSIS.md).
- “Tidak ditemukan” berarti tidak ada string/parameter/pemanggilan yang teramati pada code path yang dipulihkan. Ini bukan bukti formal bahwa semua jalur runtime tidak memuatnya; Flutter AOT dapat membangun string secara dinamis dan sebagian control flow belum pulih.
- Tidak ada eksekusi, hook, Frida, proxy, atau request ke server. Karena itu laporan tidak menyatakan bahwa server menerima code tanpa PKCE, bahwa Crashlytics benar-benar menerima payload, atau bahwa token dapat dipakai.
- Istilah **kandidat** berarti “konsisten dengan kode statis, tetapi belum diverifikasi pada runtime/server”.

## Alur production yang terlihat

```mermaid
sequenceDiagram
    autonumber
    actor U as Pengguna
    participant A as App Flutter
    participant C as Custom Tabs
    participant O as OAuth UGM
    participant P as API Simaster

    U->>A: Tap "Masuk dengan UGM ID"
    A->>A: configOauth() → Flavor.production
    A->>C: launchUrl(authorize?response_type=code&client_id=...&redirect_uri=...&scope=...)
    C->>O: GET /oauth/authorize
    O->>U: Login + consent
    O->>C: 302 id.ac.ugm.student.vnext.simaster://oauth2?code=...
    C->>A: Deep link (AppLinks.uriLinkStream)
    A->>A: _handleRedirectUri(uri)
    A->>O: POST /oauth/token (Basic + client_secret + code)
    O->>A: access_token, refresh_token, expires_in, token_type
    A->>A: Simpan SharedPreferences; decode JWT
    A->>P: Bearer access_token
    A->>U: /landing
```

Catatan alur:

- Tombol utama onboarding memakai **custom tabs** (`/oauth-webview`). Route WebView lama (`/oauth-webview-old`) hanya terpasang pada `onLongPress` tombol yang sama; bukan jalur utama.
- `flutter_deeplinking_enabled=false`; aplikasi memakai plugin `app_links` dan stream `uriLinkStream` untuk menerima redirect.
- `MainActivity` exported dengan intent filter custom scheme `id.ac.ugm.student.vnext.simaster`, host `oauth2`.
- Tidak ada `state` pada URL otorisasi dan tidak ada pembacaan `state` pada handler redirect.
- Aplikasi menutup custom tabs sebelum menukar code; code diproses sekali melalui guard `_isProcessing` dan `_processedCode`.

## Konfigurasi OAuth

Production dipilih oleh entrypoint `main_production.dart` (`Flavor@12bd571` di `0x13e5414`). `configOauth()` memilih cabang production pada `0x8c0368`.

| Item | Production | Dev/staging yang juga ada di binary |
|---|---|---|
| Authorization endpoint | `https://oauth.simaster.ugm.ac.id/oauth/authorize` | `https://oauth.dev.ugm.ac.id/oauth/authorize` |
| Token endpoint | `https://oauth.simaster.ugm.ac.id/oauth/token` | `https://oauth.dev.ugm.ac.id/oauth/token` |
| Client ID | `e6abd4e380a5462e83873fe22ab8c219yVaU` | `qYzXDQTIkQJT8icPqGAx0TP8` |
| Redirect URI | `id.ac.ugm.student.vnext.simaster://oauth2` | `https://oauth.pstmn.io/v1/browser-callback` |
| Client secret | tertanam; fingerprint `THFn…7DD`, alamat `0x8c03a4` | tertanam; fingerprint `KL9Z…pSb` |
| Scope | 12 scope (lihat bawah) | 5–15 scope, termasuk `staff`, `pegawai.*`, `tte`, `ldap` pada flavor tertentu |

Production scope array (`0x8bffc0`–`0x8c0044`):

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

Empat scope di antaranya memberi akses tulis (`user.read-write-update`, `mygate.read-write`, `parent.read-write-update`, `student.read-write-update`). Ini bukan temuan kerentanan dengan sendirinya, tetapi relevan untuk least privilege dan dampak bila token dicuri.

## F-02.1 — Tidak ada `state`

### Fakta statis

Authorization URL production dibangun dari string dasar dan scope yang digabung dengan `%20`:

```text
https://oauth.simaster.ugm.ac.id/oauth/authorize?response_type=code&client_id=...&redirect_uri=...&scope=<scopes>
```

Tidak ada `state`, `nonce`, atau parameter anti-CSRF lain. Setelah redirect, `_handleRedirectUri` hanya mengambil `queryParameters['code']`; tidak membaca `state`, tidak membandingkannya dengan nilai yang disimpan, dan tidak menolak request tanpa `state`.

`_handleRedirectUri` juga tidak menangani parameter `error`; jika server mengembalikan `error=access_denied` tanpa `code`, handler akan berhenti tanpa pesan yang jelas.

### Bukti

| Klaim | Alamat / bukti |
|---|---|
| Entrypoint production | `main_production.dart` `0x13e5414` menyimpan `Flavor@12bd571` |
| Cabang production | `flavors.dart` `0x8c0368` |
| URL otorisasi | `flavors.dart` `0x8c0410`; scope digabung `%20` di `0x8c041c`–`0x8c0430` |
| Launch custom tabs | `oauth_webview_view.dart` `_launchOAuth` `0x8a40ec`; `launchUrl` `0x8a4400` |
| Stream deep link | `_listenForRedirect` `0xf7d0d8`; `AppLinks::uriLinkStream` `0xf7d134`; `listen` `0xf7d174`; callback `0xf7d9cc` memanggil `_handleRedirectUri` di `0xf7da40` |
| Handler redirect | `_handleRedirectUri` `0x8df054`; pembacaan `code` di `0x8df2e4` |
| Route information | `didPushRouteInformation` `0x8dee60`; memanggil handler di `0x8df02c` |
| Pencarian PKCE/state | Tidak ada `code_challenge`, `code_verifier`, `S256`, atau PKCE di file auth; `pp.txt` hanya memuat string perangkat `SM-S256VL` yang tidak terkait |

### Dampak potensial

Tanpa `state`, aplikasi tidak dapat membedakan redirect yang merupakan hasil dari otorisasi yang **ia mulai** dari redirect yang disuntikkan. Dalam model login CSRF/session swapping:

1. Penyerang memulai otorisasi dengan akun uji penyerang dan mendapatkan code.
2. Code tersebut dikirim ke aplikasi korban sebagai deep link saat layar OAuth korban aktif.
3. Aplikasi menukar code dan membuat sesi korban menjadi sesi akun penyerang.
4. Korban dapat memasukkan data ke akun penyerang, atau penyerang dapat melihat data yang korban masukkan ke akun tersebut.

Ini bukan account takeover langsung; dampaknya bergantung pada data yang dimasukkan korban dan perilaku server. Tetap merupakan pelanggaran integritas sesi.

### Yang belum dibuktikan

- Apakah server staging menerima code yang dihasilkan dari sesi browser penyerang untuk client/redirect yang sama.
- Apakah aplikasi benar-benar memproses deep link saat layar OAuth aktif dan tidak memprosesnya saat layar lain.
- Apakah ada kontrol server-side yang mengikat code ke sesi, device, atau nonce tersembunyi.

## F-02.2 — Tidak ada PKCE dan client secret tertanam

### Fakta statis

Authorization request hanya memuat `response_type=code`, `client_id`, `redirect_uri`, dan `scope`. Token request memuat:

```text
grant_type=authorization_code
code=<code>
redirect_uri=<configured redirect>
client_id=<client id>
client_secret=<embedded secret>
```

Header request juga memuat `Authorization: Basic base64(client_id:client_secret)`. Tidak ada `code_verifier`. Tidak ada `code_challenge` pada authorization request. Dengan demikian alur ini bukan PKCE dan bukan public-client flow.

Client secret production tertanam di `flavors.dart` pada `0x8c03a4` (fingerprint `THFn…7DD`). Secret dev juga tertanam. Ini berarti secret dapat diekstrak dari APK; ia tidak memberikan jaminan bahwa token request berasal dari aplikasi resmi.

### Bukti

| Klaim | Alamat / bukti |
|---|---|
| Body token request | `oauth_webview_service.dart` `exchangeCodeForToken` `0x8e3834`; `client_secret` `0x8e425c`; field body di `0x8e4138`–`0x8e4300` |
| Basic auth | String `Basic ` di `0x8e3dbc`; base64(clientId:clientSecret) dibangun di `0x8e3dc4`–`0x8e3e40` |
| Tidak ada `code_verifier` | Tidak ditemukan di body/header; pencarian `code_verifier`/`code_challenge`/`S256` di file auth kosong |
| Secret production | `flavors.dart` `0x8c03a4`; secret penuh hanya di artefak privat |
| Redirect | `id.ac.ugm.student.vnext.simaster://oauth2` di `0x8c03bc` |

### Dampak potensial

- **Code interception:** aplikasi lain yang dapat menerima custom scheme yang sama, atau yang dapat membaca redirect, dapat memperoleh code. Karena tidak ada PKCE, code dapat ditukar tanpa bukti bahwa penukar adalah aplikasi yang memulai flow. Secret yang tertanam dapat diekstrak untuk melengkapi token request.
- **Replay:** code OAuth biasanya one-time dan berumur pendek. Replay hanya relevan jika server tidak menegakkan one-time use atau jika code belum ditukar. Ini harus diuji, bukan diasumsikan.
- **Client impersonation:** secret yang sama dapat dipakai untuk flow lain yang menggunakan client tersebut, tergantung kebijakan server dan grant yang diizinkan.

### Catatan penting

OAuth 2.0 untuk native app saat ini merekomendasikan **PKCE** dan tidak mengandalkan client secret yang tertanam. Secret di APK bukan rahasia yang kuat. Menghapus secret dari body tetapi tetap memakai Basic auth tidak menyelesaikan masalah; secret tetap dapat diekstrak. Perbaikan yang benar adalah memindahkan client ke model public client + PKCE, atau memakai backend-for-frontend yang memegang secret.

## F-02.3 — Redirect diverifikasi dengan `contains`

### Fakta statis

`_handleRedirectUri` menerima URI jika string URI **mengandung** salah satu dari:

- configured redirect URI (`id.ac.ugm.student.vnext.simaster://oauth2`),
- substring `oauth2`,
- substring `login-callback`.

Ini bukan exact match. Setelah lolos, handler mengambil `queryParameters['code']` dan memprosesnya. `didPushRouteInformation` memakai pemeriksaan yang sama.

Manifest:

- `MainActivity` exported, `launchMode=singleTop`, intent filter `VIEW`/`BROWSABLE` dengan custom scheme `id.ac.ugm.student.vnext.simaster`, host `oauth2`.
- `flutter_deeplinking_enabled=false`.
- `allowBackup=false`.
- `usesCleartextTraffic=true`; tidak ada `networkSecurityConfig`.
- `AuthorizationManagementActivity` dan `RedirectUriReceiverActivity` dari AppAuth exported tanpa intent filter.

Custom scheme bukan Android App Link; tidak ada verifikasi kepemilikan domain. Siapa pun dapat mendaftarkan scheme yang sama di aplikasi lain, dan Android dapat menampilkan chooser atau mengarahkan ke handler lain.

### Bukti

| Klaim | Alamat / bukti |
|---|---|
| Pemeriksaan `contains` | `_handleRedirectUri` `0x8df054`; configured redirect check `0x8df250`; `oauth2` check `0x8df274`; `login-callback` check `0x8df29c`; gabungan di `0x8df2b4` |
| Ambil code | `0x8df2e4` (`"code"`), hasil di `0x8df2f4` |
| Guard duplikat | `_isProcessing` di `0x8df348`; `_processedCode` di `0x8df354`–`0x8df3d0` |
| Sukses/gagal | `/landing` di `0x8df4c8`; `/onboarding` di `0x8df500`; exception path di `0x8df554` |
| Manifest | `reports/AndroidManifest.xml` baris 109–129; AppAuth activities baris 132–136 |

### Dampak potensial

- URI yang mengandung `oauth2` di path/query dapat lolos pemeriksaan aplikasi. Apakah URI tersebut bisa mencapai handler bergantung pada intent filter dan stream; ini perlu diuji.
- Custom scheme dapat diperebutkan. Aplikasi berbahaya dapat menerima code sebelum aplikasi resmi, lalu menukarnya jika memiliki secret (yang dapat diekstrak).
- Tidak adanya exact match juga mempersulit alasan keamanan: perubahan konfigurasi redirect di masa depan dapat memperluas permukaan tanpa terlihat.

### Yang belum dibuktikan

- Apakah Android benar-benar menampilkan chooser atau langsung mengarahkan ke aplikasi resmi pada perangkat uji.
- Apakah server menolak `redirect_uri` yang tidak persis sama.
- Apakah URI non-custom-scheme dapat mencapai `_handleRedirectUri` melalui route information.

## F-02.4 — Payload token exchange dikirim ke Crashlytics saat error

### Fakta statis

Pada token exchange non-200, cabang production menyetel custom keys Crashlytics:

| Key | Nilai |
|---|---|
| `endpoint` | token endpoint |
| `method` | `POST` |
| `status_code` | status response |
| `request_headers` | map header request, termasuk `Authorization: Basic ...` |
| `request_body` | map body request, termasuk `client_secret` dan `code` |
| `response_body` | body response error |

`request_headers` dan `request_body` dilewatkan ke `TextProcessing.stringifyRequestBody`. Untuk `Map`, fungsi ini memanggil `jsonEncode` dan mengembalikan hasilnya; tidak ada filter key, masking, atau redaksi yang teramati. Untuk `FormData`, fungsi ini menggabungkan field tanpa redaksi.

Dengan demikian, pada error token exchange, **Basic credential dan client secret** dapat dikirim ke Crashlytics, bersama authorization code. `response_body` biasanya berisi error JSON, bukan token, tetapi tetap dapat memuat detail server.

Cabang ini hanya dijalankan untuk flavor production (`F::currentFlavor` check di `0x8e540c`). Flavor dev/staging tidak menyetel keys ini.

### Bukti

| Klaim | Alamat / bukti |
|---|---|
| Blok error production | `oauth_webview_service.dart` `0x8e5404`–`0x8e5628` |
| `request_headers` | `0x8e55a0`; nilai dari `fp-0x1c8` (`0x8e5580`) |
| `request_body` | `0x8e55e0`; nilai dari `fp-0x1b8` (`0x8e55c0`) |
| `response_body` | `0x8e5610` (`Response::body`) |
| Serialisasi tanpa redaksi | `utils.dart` `TextProcessing::stringifyRequestBody` `0x8e8050`; branch Map → `jsonEncode` `0x8e831c` |
| Header Basic | `0x8e3dbc`–`0x8e3e40` |
| Body secret/code | `0x8e4138`–`0x8e4300`; `client_secret` `0x8e425c` |

### Dampak potensial

- Client secret dan authorization code meninggalkan perangkat menuju Crashlytics. Secret sudah dapat diekstrak dari APK, tetapi code dapat berupa kredensial sesi yang belum tentu sudah tidak valid.
- Jika akses ke project Crashlytics disalahgunakan, payload ini dapat membantu penyerang memahami parameter token dan, pada kondisi tertentu, menukar code.
- Ini juga pelanggaran prinsip minimisasi data: payload sensitif tidak perlu dikirim ke crash reporting.

### Yang belum dibuktikan

- Apakah Crashlytics benar-benar mengunggah custom keys pada build production (tergantung konfigurasi Firebase dan konektivitas).
- Apakah payload di-truncate atau difilter oleh SDK Crashlytics.
- Apakah code sudah kedaluwarsa/ditukar saat error terjadi.

## F-02.5 — Token disimpan di SharedPreferences biasa

### Fakta statis

Setelah token exchange sukses, aplikasi menyimpan:

- `access_token`
- `refresh_token`
- `access_token_expiration` (nilai `expires_in`)
- `token_type`
- data user/filtered attributes

melalui `SharedPreferencesService.saveData`. Implementasi memakai `SharedPreferences.getInstance()` dan `setString`/`setInt`; tidak ada `EncryptedSharedPreferences`, `flutter_secure_storage`, Keystore, atau enkripsi aplikasi yang teramati.

`allowBackup=false` mengurangi risiko backup cloud, tetapi tidak melindungi perangkat rooted, forensic image, atau akses filesystem dengan hak yang cukup.

### Bukti

| Klaim | Alamat / bukti |
|---|---|
| Simpan token | `oauth_webview_service.dart` `0x8e440c`–`0x8e458c` |
| `SharedPreferencesService.saveData` | `utils.dart` `0x920b74` |
| SharedPreferences | `SharedPreferences::getInstance` `0x920ba8`; `setString` `0x920bec`; `setInt` `0x920c18` |
| Manifest backup | `reports/AndroidManifest.xml` baris 91 `allowBackup=false` |
| Tidak ada secure storage | Pencarian `EncryptedSharedPreferences`, `flutter_secure_storage`, `Keystore` tidak menemukan penggunaan |

### Dampak potensial

Token bearer dan refresh token dapat dibaca dari perangkat yang dikompromikan. Dampaknya sama dengan F-03; bagian ini hanya menegaskan bahwa token OAuth adalah data yang terkena.

## F-02.6 — JWT hanya di-decode, tidak diverifikasi

### Fakta statis

Aplikasi memanggil `JwtDecoder.decode` pada access token dan refresh token, lalu mengambil `sub` dan `data.attributes`. Tidak ada pemanggilan verifikasi signature, issuer, audience, atau validasi kunci publik yang teramati. Library `jwt_decoder` melakukan decode payload; verifikasi bukan tujuan pemanggilan ini.

Token diterima melalui HTTPS dari token endpoint, sehingga risiko utama bukan sekadar “JWT bisa dipalsukan di mana saja”. Risiko muncul bila token response dapat dimodifikasi (misalnya MITM dengan CA tepercaya, token endpoint yang dikompromikan, atau build/lab yang memalsukan respons) dan aplikasi memakai klaim untuk keputusan lokal. Server tetap harus menolak token tanpa signature yang valid.

### Bukti

| Klaim | Alamat / bukti |
|---|---|
| Decode access token | `oauth_webview_service.dart` `0x8e4654`; `sub` `0x8e4670`; `data.attributes` `0x8e4704` |
| Decode refresh token | `oauth_controller.dart` `0x914314` dan `0x914320` |
| Tidak ada verifikasi | Pencarian `JwtValidator`, `verify`, `signature`, `RS256`, `HS256`, `publicKey`, `secretKey` di file auth kosong |
| Library | `jwt_decoder` `0x920a4c` |

### Dampak potensial

Klaim identitas/atribut yang ditampilkan aplikasi dapat dimanipulasi bila token response tidak tepercaya. Dampak sebenarnya bergantung pada apakah server memvalidasi token dan apakah aplikasi memakai klaim untuk otorisasi lokal. Ini kandidat defense-in-depth, bukan bukti bypass otorisasi server.

## F-02.7 — Konfigurasi dev/staging di binary production

### Fakta statis

Binary production memilih konfigurasi production, tetapi masih memuat string konfigurasi dev/staging: host `oauth.dev.ugm.ac.id`, client ID `qYzXDQTIkQJT8icPqGAx0TP8`, redirect Postman, scope tambahan, dan secret dev. String ini dapat diekstrak dari APK. Tidak ada indikasi bahwa konfigurasi dev dipakai oleh entrypoint production, tetapi keberadaannya memperluas material yang dapat disalahgunakan jika kredensial dev masih aktif.

### Bukti

| Klaim | Alamat / bukti |
|---|---|
| Dev authorization URL | `flavors.dart` `0x8c0110`, `0x8c01cc`, `0x8c0344` |
| Dev token URL | `flavors.dart` `0x8c0318` |
| Dev redirect | `https://oauth.pstmn.io/v1/browser-callback` |
| Dev secret | tertanam; fingerprint `KL9Z…pSb` |
| Production selection | `main_production.dart` `0x13e5414`; `configOauth` production `0x8c0368` |

### Dampak potensial

Jika client dev masih aktif dan server dev dapat dijangkau, secret dev yang diekstrak dapat dipakai untuk flow yang diizinkan server dev. Dampaknya terbatas pada lingkungan dev, tetapi tetap merupakan risiko supply-chain/credential hygiene. Rekomendasi: rotasi, revoke, dan pisahkan konfigurasi dari build production.

## F-02.8 — Hardening dan observasi tambahan

| Item | Fakta statis | Penilaian |
|---|---|---|
| AppAuth activities exported | `AuthorizationManagementActivity` dan `RedirectUriReceiverActivity` exported tanpa intent filter; tidak ada pemanggilan API AppAuth di code auth yang dipulihkan | Permukaan explicit intent; dampak belum terbukti. Hapus jika tidak dipakai. |
| Cleartext traffic | `usesCleartextTraffic=true`; tidak ada network security config | OAuth endpoint memakai HTTPS, tetapi kebijakan ini mengizinkan cleartext untuk host lain. Kandidat hardening. |
| Scope lebar | 4 scope write pada production | Least privilege; perlu konfirmasi apakah semua dipakai. |
| Logging | String debug `Code OAUTH2:`, `Access Token:`, `Refresh Token:` ada; emission digated `Log._isLoggingEnabled` yang initializer-nya belum pulih | Tidak diklaim sebagai kebocoran. Perlu uji logcat di staging. |
| Crashlytics log redirect | `FirebaseCrashlytics.log("oauth_redirect_received: code diterima setelah ...")` hanya mencatat timing, bukan code | Bukan temuan kebocoran code. |
| Error handling | `error=access_denied` tidak ditangani; handler hanya mencari `code` | Fungsional; pengguna dapat tertahan tanpa pesan. |
| `allowBackup=false` | Manifest baris 91 | Positif; mengurangi backup otomatis. |

## Matriks verifikasi

| Klaim | Jenis bukti | Status |
|---|---|---|
| Production memilih konfigurasi production | Statis: entrypoint + cabang `configOauth` | Terverifikasi statis |
| Authorization request tidak memuat `state` | Statis: string URL + tidak ada pembacaan `state` | Terverifikasi statis pada code path yang dipulihkan |
| Authorization request tidak memuat PKCE | Statis: tidak ada `code_challenge`/`code_verifier`/S256 | Terverifikasi statis pada code path yang dipulihkan |
| Client secret tertanam dan dikirim di body + Basic | Statis: string + token request | Terverifikasi statis |
| Redirect memakai `contains` | Statis: tiga pemeriksaan substring | Terverifikasi statis |
| Crashlytics menerima header/body sensitif saat error | Statis: custom keys + `stringifyRequestBody` | Terverifikasi statis; upload belum |
| Token disimpan plaintext | Statis: SharedPreferences | Terverifikasi statis |
| JWT tidak diverifikasi | Statis: hanya `decode` | Terverifikasi statis; dampak belum |
| Dev secret masih valid | Tidak dapat ditentukan dari APK | Perlu uji staging/dev berizin |
| Code interception/login CSRF dapat dieksploitasi | Tidak dapat ditentukan dari APK | Perlu uji staging berizin |
| AppAuth exported activities dapat disalahgunakan | Tidak dapat ditentukan dari APK | Perlu uji terbatas |

## Rekomendasi perbaikan

### Prioritas 1 — OAuth protocol

1. **Tambahkan `state`** yang dibuat secara kriptografis acak (minimal 128-bit), disimpan di memori/secure storage, dan divalidasi exact saat redirect. Tolak redirect tanpa `state` atau dengan nilai yang tidak cocok.
2. **Terapkan PKCE S256**: kirim `code_challenge` pada authorization request dan `code_verifier` pada token request. Server harus menolak token request tanpa verifier yang cocok.
3. **Hentikan penggunaan client secret tertanam** untuk native app. Gunakan public client + PKCE, atau backend-for-frontend yang memegang secret. Jika secret tetap dipakai, rotasi dan jangan kirim di body + Basic sekaligus.
4. **Validasi redirect exact** di server dan client. Jangan memakai `contains`; bandingkan scheme/host/path secara persis. Pertimbangkan Android App Links (`https` + `autoVerify`) alih-alih custom scheme.
5. **Tangani `error`** (`access_denied`, `invalid_request`, dll.) dan jangan menukar code jika respons error.

### Prioritas 2 — Data sensitif

6. **Redaksi Crashlytics**: jangan kirim `Authorization`, `client_secret`, `code`, atau body mentah. Gunakan allowlist metadata (endpoint, status, error code) atau hash.
7. **Secure storage** untuk access/refresh token (Keystore/EncryptedSharedPreferences), bukan SharedPreferences biasa.
8. **Verifikasi JWT** atau jangan gunakan klaim untuk keputusan lokal; server tetap harus memvalidasi signature/issuer/audience.
9. **Hapus konfigurasi dan secret dev** dari build production; rotasi kredensial yang pernah tertanam.

### Prioritas 3 — Hardening

10. Hapus/disable AppAuth activities yang tidak dipakai; jika dipakai, lindungi dengan permission/internal intent.
11. Set `usesCleartextTraffic=false` dan tambahkan network security config.
12. Kurangi scope ke minimum yang benar-benar dipakai; audit empat scope write.
13. Pastikan logging debug mati di release dan tidak pernah mencetak code/token/secret.
14. Pertimbangkan rotasi refresh token dan deteksi reuse di server.

## Cara mereproduksi bukti

Dari root repo:

```bash
unzip -l analysis-results.zip | grep -E 'flavors\.dart|oauth_webview_service\.dart|oauth_webview_view\.dart|oauth_controller\.dart|pp\.txt'
unzip -p analysis-results.zip blutter-output/asm/simaster_ugm/flavors.dart | grep -nE 'authorizationUrl|clientId|redirectUri|tokenUrl|scope'
unzip -p analysis-results.zip blutter-output/asm/simaster_ugm/app/modules/auth/data/services/oauth_webview_service.dart | grep -nE 'client_secret|code_verifier|Basic|request_headers|request_body'
unzip -p analysis-results.zip blutter-output/asm/simaster_ugm/app/modules/auth/views/oauth_webview_view.dart | grep -nE 'oauth2|login-callback|queryParameters|state|/landing|/onboarding'
unzip -p analysis-results.zip blutter-output/asm/simaster_ugm/app/controllers/oauth_controller.dart | grep -nE 'refresh_token|grant_type|JwtDecoder'
unzip -p analysis-results.zip blutter-output/pp.txt | grep -nE 'code_challenge|code_verifier|S256|PKCE'
```

Nilai secret penuh tidak dicetak oleh perintah di atas; perintah hanya mencari nama field/parameter. Jangan menyalin output mentah yang memuat nilai rahasia ke dokumen publik.

## Batas dan pertanyaan terbuka

- Apakah server production/staging **mewajibkan** PKCE untuk client ini? Static code tidak dapat menentukannya.
- Apakah server menolak `redirect_uri` selain nilai yang terdaftar secara exact? Perlu uji server.
- Apakah Android menampilkan chooser untuk custom scheme pada perangkat target, atau langsung mengarahkan ke aplikasi resmi?
- Apakah Crashlytics production benar-benar mengunggah custom keys pada error token exchange?
- Apakah `Log._isLoggingEnabled` bernilai true pada build release? Initializer belum pulih.
- Apakah AppAuth activities benar-benar tidak dipakai dan apakah explicit intent dari aplikasi lain memiliki dampak?
- Apakah scope write benar-benar diperlukan oleh fitur yang ada?

Pertanyaan-pertanyaan ini menjadi dasar [`OAUTH-STAGING-TEST-PLAN.md`](OAUTH-STAGING-TEST-PLAN.md). Semua pengujian harus dilakukan pada staging dengan izin tertulis, akun uji, dan batas yang disepakati.

## Referensi

- [`SECURITY-FINDINGS.md`](SECURITY-FINDINGS.md) — ringkasan F-01 dan kandidat F-02–F-06.
- [`OAUTH-STAGING-TEST-PLAN.md`](OAUTH-STAGING-TEST-PLAN.md) — rencana uji staging berizin.
- [`FEATURE-MAP.md`](FEATURE-MAP.md) — route dan service.
- [`AndroidManifest.xml`](AndroidManifest.xml) — manifest hasil decode.
- [`ANALYSIS.md`](ANALYSIS.md) — metode dan batasan umum.
