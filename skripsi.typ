#let skripsi(data: (:), body) = {
  // 1. Pengaturan Kertas & Margin Standar Indonesia (4-4-3-3 cm)
  set page(
    paper: "a4",
    margin: (
      top: 4cm,
      left: 4cm,
      bottom: 3cm,
      right: 3cm,
    ),
  )

  // 2. Pengaturan Font & Spasi Paragraf
  set text(
    font: "Liberation Serif",
    size: 12pt,
    lang: "id",
  )

  set par(
    justify: true,
    leading: 0.9em,
    first-line-indent: 1.2cm,
  )

  // 3. Halaman Sampul (Cover) Otomatis
  page(numbering: none)[
    #align(center)[
      #text(size: 14pt, weight: "bold")[#data.judul]
      
      #v(1.5cm)
      #text(size: 12pt, weight: "bold")[#data.jenis_karya]
      
      #v(0.8cm)
      #text(size: 11pt)[#data.tujuan]
      
      #v(2cm)
      #rect(width: 3.5cm, height: 3.5cm, stroke: 1pt + gray)[
        #align(center + horizon)[Logo Kampus]
      ]
      
      #v(2cm)
      Oleh:\
      #text(weight: "bold")[#underline[#data.nama]]\
      NIM. #data.nim
      
      #v(1fr)
      #text(size: 12pt, weight: "bold")[
        PROGRAM STUDI #upper(data.prodi)\
        #upper(data.fakultas)\
        #upper(data.universitas)\
        #upper(data.kota)\
        #data.tahun
      ]
    ]
  ]

  // 4. Bagian Halaman Awal (Penomoran Romawi Kecil: i, ii, iii, iv, v)
  set page(
    numbering: "i",
    number-align: bottom + center,
  )
  counter(page).update(1)

  // Urutan Halaman Awal Otomatis
  include "pengesahan.typ"
  include "kata-pengantar.typ"
  include "abstrak.typ"

  // Daftar Isi Otomatis
  page[
    #align(center)[
      #text(size: 14pt, weight: "bold")[DAFTAR ISI]
    ]
    #v(0.5cm)
    #outline(
      title: none,
      indent: auto,
    )
  ]



  // 5. Pengaturan Penomoran Bab & Sub-bab untuk Isi Utama
  set heading(numbering: "1.1")
  
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    align(center)[
      #text(size: 14pt, weight: "bold")[
        BAB #counter(heading).display("I")\
        #upper(it.body)
      ]
    ]
    v(0.8cm)
  }

  show heading.where(level: 2): it => {
    v(0.4cm)
    text(size: 12pt, weight: "bold")[#it]
    v(0.2cm)
  }

  // 6. Bagian Isi Utama (Penomoran Cerdas: Bawah Tengah untuk Awal BAB, Kanan Atas untuk Lanjutan)
  set page(
    numbering: none,
    header: context {
      let current-page = here().page()
      let headings = query(heading.where(level: 1)).filter(h => h.location().page() == current-page)
      
      if headings.len() == 0 {
        align(right)[#counter(page).get().first()]
      }
    },
    footer: context {
      let current-page = here().page()
      let headings = query(heading.where(level: 1)).filter(h => h.location().page() == current-page)
      
      if headings.len() > 0 {
        align(center)[#counter(page).get().first()]
      }
    }
  )
  counter(page).update(1)

  body
}
