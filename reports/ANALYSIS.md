# Hasil static reverse engineering

## Ringkasan

Target adalah paket Android `id.ac.ugm.student.vnext.simaster` versi **1.11.1** (version code **65**). Paketnya berupa XAPK/split: base APK memuat lima DEX, sementara split `arm64-v8a` memuat Flutter `libapp.so` dan library native. Aplikasi utama memakai Flutter/Dart AOT. APK belum dipasang atau dijalankan; percobaan runtime berhenti pada batas ABI emulator yang dicatat di bawah.

Source code asli Dart tidak ada di APK. JADX mengurai Java/DEX wrapper dan resources; Blutter merekonstruksi metadata Dart, object pool, serta assembly ARM64 berlabel. Hasil Blutter bukan source Dart asli.

## Sumber paket

Berkas diperoleh dari [halaman unduh APKPure](https://apkpure.net/simaster-student-vnext/id.ac.ugm.student.vnext.simaster/download), yaitu mirror pihak ketiga. Kanal resmi UGM adalah [listing Google Play](https://play.google.com/store/apps/details?id=id.ac.ugm.student.vnext.simaster&hl=id). Identitas paket dan versinya dicocokkan dari manifest lokal.

## Temuan

### Paket Android

- `minSdk=24`, `targetSdk=36`; REA menghitung 14.749 class dan 776 resource.
- Manifest menyatakan 50 komponen: 7 activity, 8 provider, 19 service, dan 16 receiver. `MainActivity` diekspor untuk launcher dan deep link OAuth dengan skema `id.ac.ugm.student.vnext.simaster` dan host `oauth2`. Ini deklarasi manifest, bukan bukti alur runtime berhasil.
- Permission yang dideklarasikan mencakup internet, coarse/fine location, kamera, storage/media, network state, wake lock, notifikasi, foreground service, boot receiver, dan Firebase/advertising identifiers. Deklarasi tidak membuktikan setiap izin diminta atau digunakan saat aplikasi berjalan.

### Flutter dan aplikasi

- Split ARM64 berisi `libapp.so` 20.972.432 byte; SHA-256 `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290`. Hash snapshot yang cocok dari dua header adalah `ace654289f5abc240509fc941453ebc5`. Blutter sebelumnya memetakan build ini ke Dart **3.12.2**, tetapi REA tidak menemukan string versi Dart berlabel; versi tepat tetap inferensi dari hash.
- Pool simbol/path yang dipulihkan mencantumkan 41 grup modul fitur; inventaris direktori assembly berisi 43 modul, termasuk komponen bersama dan pengujian. Area yang tampak mencakup autentikasi/OAuth, presensi dan QR, jadwal/mata kuliah, dashboard, beasiswa, bimbingan, e-KTM, MyGate/kendaraan, notifikasi, layanan/OSS, RSA, dan Transgama. Nama modul menunjukkan struktur paket; ini bukan verifikasi layar aktif atau alur pengguna.
- Rekonstruksi `BaseNetworkingV2` memuat base URL `https://api.simaster.ugm.ac.id/vnext/v1/`; object pool juga memuat host OAuth `oauth.simaster.ugm.ac.id` beserta path authorize/token. Nama method yang terlihat termasuk `_onRequestToken` dan `_onErrorToken`. Ini konfigurasi/string statis, bukan pengamatan permintaan jaringan.
- String lain menunjukkan URL untuk lingkungan `dev`, `checking`, dan `preview`; laporan ini tidak menghubungi host tersebut.
- Pemetaan statis 49 route, 18 route yang melewati pemeriksaan sesi, dan 36 pasangan pemanggil/service (29 label service unik) tersedia di [`FEATURE-MAP.md`](FEATURE-MAP.md). Tidak satu pun membuktikan route dicapai atau request benar-benar dikirim.

### Decompile dan batasan

- JADX 1.5.6 memproses 10.477 unit dan menulis 14.647 file Java serta 797 file resource. Proses melaporkan **164 error** dan exit code 3; hasil disertakan sebagai output parsial, bukan decompile bersih.
- Blutter ([commit `4a60ac648bf448c5a7596437243bcd0b9376fdf0`](https://github.com/worawit/blutter/tree/4a60ac648bf448c5a7596437243bcd0b9376fdf0)) menulis 2.312 file assembly dan 418 file khusus paket `simaster_ugm`; terdapat satu assertion error pada alamat `0xcab944`, tetapi dump object pool/assembly tetap selesai.
- Ghidra 12.1.4 memetakan ELF ARM64 dan melihat 75 string terdefinisi, tetapi tidak menemukan fungsi pada `libapp.so`. Tabel simbol ELF hanya mengekspos object snapshot Dart; Ghidra tidak menghasilkan pseudocode fungsi untuk library ini. Ini batas analisis Ghidra tersebut, bukan bukti library tidak memiliki kode.
- Pool string Dart dari REA bersifat parsial (maksimum 500 URI paket dan 2.000 token seperti kelas). Metode dan string yang hilang tidak boleh dianggap tidak ada.

### Percobaan runtime

- Emulator Android 36 `x86_64` berhasil boot dalam keadaan offline. XAPK hanya menyediakan split native `arm64-v8a`; image tersebut tidak menyediakan native bridge ARM (`ro.dalvik.vm.native.bridge` kosong), sehingga APK tidak dipasang.
- Image Google APIs ARM64 sempat dipasang di SDK lokal, tetapi Android Emulator 37.2.12 menolak menjalankannya di host `x86_64` dengan `QEMU2 emulator does not support arm64 CPU architecture`. T3 Device panel juga melaporkan Android SDK tidak ditemukan pada host. APK dan layanan backend tidak dijalankan atau dihubungi.
- Akibatnya, tampilan, navigasi aktual, dialog izin, crash saat startup, serta traffic dan respons API masih belum diamati.

## Redaksi sebelum push

Output statis memuat string berbentuk JWT dan nilai Firebase Google API key. Nilai tersebut disamarkan di `analysis-results.zip` dan salinan source yang dapat dibrowse; file analisis lokal di luar payload repo tidak diubah. Token-shaped string belum diverifikasi validitasnya. APK dan `.so` asli tidak dimasukkan ke repo; hash dan ukuran sumber ada di `artifact-manifest.json`.

## Evidence

- REA `inspect_android_package`: `ev_fdc891b44e4014e6a41277dcee65ba7fda9cc718a6f056628a48379318d753c0`
- REA `identify_flutter_build`: `ev_3b8feb71641a7c5ff95b59ec8f233a429049b8c3e0d1ae02aabb75fce460b72c`
- REA `inspect_dart_aot`: `ev_98c8eb644c9d475e482d2b435218f07876b002b5986e51e73d7fdf1fda886aa7`
- REA `identify_flutter_build` setelah relokasi: `ev_edbb7846e6f1b04c4a0650d984452d7a0122bf07ece52b4ac09ae35a8cda8337`
- REA `inspect_dart_aot` summary: `ev_7e6957dd369e1b0e8b5e51327ffb85096566bcf7950c81f106aca26ebcfad3ba` (linked full evidence `ev_7d0d30ce95671ecf7c9e663b092333e4c7339fa5178f94efecbcece555488a4e`)
- Ghidra overview: `ev_d2aed4e9b500a12a043204359f1ef4c474b9260ac88be19d64bb0935cd4d0f64`
- Ghidra procedure inventory: `ev_a80bb004c147bb8ab688513c012aa90f354df78c8cc8fff348ce42dc45bb244b`
- Ghidra string inventory: `ev_539a600ac61b30511091aad0cd967f0b8c45ad48f897e51a0b1eba4f40fdc3d9`

Evidence bundle Ghidra ada di `ghidra-evidence-bundle.json`; bukti REA CLI tersedia dalam JSON terpisah di direktori ini.
