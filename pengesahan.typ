#import "metadata.typ": data

#align(center)[
  #text(size: 14pt, weight: "bold")[LEMBAR PENGESAHAN SKRIPSI]
]
#v(0.8cm)

#align(center)[
  #text(weight: "bold")[#data.judul]
]
#v(0.8cm)

Skripsi ini telah dipertahankan di hadapan Tim Penguji Sidang Sarjana Program Studi #data.prodi, #data.fakultas, #data.universitas, dan dinyatakan diterima untuk memenuhi sebagian persyaratan memperoleh gelar Sarjana.

#v(1cm)
#align(center)[
  #data.kota, #data.tahun \
  Menyetujui,
]

#v(0.8cm)
#grid(
  columns: (1fr, 1fr),
  gutter: 1cm,
  align(center)[
    Pembimbing I,
    #v(2.2cm)
    #underline[#text(weight: "bold")[#data.pembimbing_1]] \
    NIP. #data.nip_1
  ],
  align(center)[
    Pembimbing II,
    #v(2.2cm)
    #underline[#text(weight: "bold")[#data.pembimbing_2]] \
    NIP. #data.nip_2
  ]
)
#pagebreak()
