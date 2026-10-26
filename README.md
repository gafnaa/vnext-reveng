# Simaster UGM Student vNEXT — static reverse engineering

Repo privat untuk artefak decompile dan temuan statis aplikasi Android paket `id.ac.ugm.student.vnext.simaster` versi 1.11.1 (code 65). Aplikasi tidak dipasang atau dijalankan.

## Isi

- [`analysis-results.zip`](analysis-results.zip): output lengkap JADX dan Blutter; berkas berisi nilai token/API key yang tampak sensitif telah disamarkan.
- [`reports/ANALYSIS.md`](reports/ANALYSIS.md): ringkasan arsitektur, izin, modul, host statis, hasil alat, keterbatasan, dan Evidence ID.
- [`reports/FEATURE-MAP.md`](reports/FEATURE-MAP.md): route yang dipulihkan, daftar pemeriksaan sesi, dan pemetaan label service ke caller statis.
- [`reports/`](reports/): manifest Android dan Evidence REA/Ghidra.
- [`recovered/`](recovered/): beberapa file hasil rekonstruksi Dart dan wrapper Android untuk ditinjau langsung. Itu bukan source asli.

XAPK/APK dan native library tidak dimasukkan ke repo. SHA-256 dan sumbernya dicatat dalam [`reports/artifact-manifest.json`](reports/artifact-manifest.json). Hasil decompile tidak lengkap: JADX melaporkan 164 error dan Blutter 1 assertion error; lihat analisis untuk batasan lengkap.
