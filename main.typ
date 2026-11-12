#import "metadata.typ": data
#import "skripsi.typ": skripsi

#show: skripsi.with(data: data)

// Isi Bab Skripsi
#include "bab1.typ"

// Halaman Daftar Pustaka Otomatis
#pagebreak()
#bibliography("referensi.bib", title: "DAFTAR PUSTAKA", style: "apa")
