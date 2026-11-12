# 🎓 Skripsi-Typst: Template Skripsi Otomatis & Modern

[![Build Skripsi PDF](https://github.com)](https://github.com)
[![License: MIT](https://shields.io)](LICENSE)
[![Typst](https://shields.io)](https://typst.app)

Template penulisan skripsi, tesis, dan tugas akhir berbasis **Typst** (alternatif modern untuk LaTeX) yang dirancang khusus mengikuti standar pedoman penulisan karya ilmiah di Indonesia.

> ✨ **Fokus pada isi tulisanmu. Biarkan template ini mengurus margin, daftar isi, penomoran halaman Romawi-Arab, lembar pengesahan, dan daftar pustaka secara otomatis.**

---

## 📸 Pratinjau Hasil

| Halaman Sampul (Cover) | Daftar Isi Otomatis | Isi Bab & Sitasi |
| :---: | :---: | :---: |
| ![Cover](assets/preview-cover.png) | ![Daftar Isi](assets/preview-toc.png) | ![Isi Bab](assets/preview-bab.png) |

---

## 🚀 Fitur Utama

* **Standar Akademik Indonesia:** Otomatis mengatur kertas A4, margin **4-4-3-3 cm**, spasi **1.5** untuk isi bab, dan spasi **1.0** untuk abstrak.
* **Penomoran Halaman Cerdas:**
  * Halaman sampul tanpa nomor.
  * Halaman awal (*Lembar Pengesahan, Kata Pengantar, Abstrak, Daftar Isi*) otomatis menggunakan angka Romawi kecil (`i, ii, iii, ...`) di bagian bawah tengah.
  * Setiap halaman awal bab baru (**BAB I, BAB II, dst.**) otomatis meletakkan nomor halaman di **bawah tengah**, sedangkan halaman lanjutannya berpindah ke **kanan atas**.
* **Konfigurasi Terpusat:** Cukup isi nama, NIM, judul, kampus, dan nama dosen pembimbing di satu file (`metadata.typ`), seluruh halaman sampul, lembar pengesahan, dan kata pengantar otomatis terisi.
* **Abstrak Dwi-Bahasa:** Dilengkapi format Abstrak Bahasa Indonesia dan *Abstract* Bahasa Inggris (*italic*) siap pakai.
* **Daftar Pustaka & Sitasi Otomatis:** Mendukung manajemen referensi standar BibTeX (`.bib`) dengan gaya sitasi APA/IEEE.
* **Compile Super Cepat:** Menggunakan Typst yang merender dokumen PDF dalam hitungan milidetik.

---

## 📂 Struktur Folder

```text
skripsi-typst/
├── .github/workflows/
│   └── build.yml           # Otomatisasi compile PDF via GitHub Actions
├── assets/                 # Gambar preview & logo kampus
├── abstrak.typ             # Halaman Abstrak (Indonesia & English Italic)
├── bab1.typ                # Contoh isi BAB I (Sub-bab 1.1 s/d 1.8)
├── kata-pengantar.typ      # Halaman Kata Pengantar otomatis
├── main.typ                # File utama (titik masuk dokumen)
├── metadata.typ            # Pusat pengaturan data mahasiswa, judul, & pembimbing
├── pengesahan.typ          # Halaman Lembar Pengesahan otomatis
├── referensi.bib           # Database daftar pustaka (format BibTeX)
├── skripsi.typ             # Kode inti tata letak & aturan halaman
├── LICENSE                 # Lisensi MIT
└── README.md               # Dokumentasi proyek
```

---

## 🛠️ Cara Penggunaan

### Opsi 1: Tanpa Instalasi via Typst Web App (Direkomendasikan)
1. Klik tombol hijau **Code** di atas > pilih **Download ZIP** (atau *clone* repositori ini).
2. Buka [typst.app](https://typst.app) dan buat proyek baru (**Empty project**).
3. Unggah seluruh file dari repositori ini ke dalam proyek tersebut.
4. Pastikan ikon mata (*main file*) berada di file **`main.typ`**.
5. Ubah biodata dan judul skripsimu di file **`metadata.typ`**, lalu mulai menulis di **`bab1.typ`**.

### Opsi 2: Menggunakan VS Code di Komputer Lokal
1. Instal ekstensi **Tinymist Typst** di Visual Studio Code.
2. Clone repositori ini:
   ```bash
   git clone https://github.com
   cd skripsi-typst
   ```
3. Buka file **`main.typ`**, lalu tekan **`Ctrl + K` diikuti `V`** untuk membuka pratinjau PDF secara langsung.

---

## 📖 Panduan Singkat Penulisan

### Menambahkan Sitasi
1. Salin format BibTeX jurnal dari Google Scholar dan tempelkan ke file **`referensi.bib`**.
2. Panggil kodenya di dalam bab menggunakan tanda `@`, contoh:
   ```typst
   Menurut penelitian sebelumnya @santoso2025, tingkat kelulusan dapat diprediksi sejak awal.
   ```
3. Daftar pustaka di bagian akhir dokumen akan otomatis tersusun rapi.

---

## 🤝 Kontribusi

Ingin menambahkan penyesuaian format untuk pedoman skripsi kampusmu atau memperbaiki *bug*? Kontribusi sangat terbuka!

1. *Fork* repositori ini.
2. Buat *branch* fitur baru (`git checkout -b fitur/kampus-baru`).
3. *Commit* perubahanmu (`git commit -m 'Menambahkan preset kampus X'`).
4. *Push* ke *branch* tersebut (`git push origin fitur/kampus-baru`).
5. Buat **Pull Request**.

---

## 📄 Lisensi

Proyek ini dilisensikan di bawah [MIT License](LICENSE) — bebas digunakan, dimodifikasi, dan dibagikan untuk keperluan akademik maupun pengembangan lebih lanjut.

⭐ **Jika template ini membantu skripsimu, jangan lupa berikan Star pada repositori ini!**
