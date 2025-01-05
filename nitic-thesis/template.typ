#import "@preview/codelst:2.0.1": sourcecode

// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(
  subject: "",
  title: "",
  abstract: [],
  keywords: [],
  authors: (),
  date: none,
  body,
) = {
  // Set the document's basic properties.
  set document(author: authors.map(a => a.name), title: title)
  set page(numbering: "1", number-align: center, margin: (
      inside: 15mm,
      outside: 15mm,
      // outside: 20mm,
      y: 15mm,
    ),
    paper: "a4",
  )
  set text(font: "Libertinus Serif", lang: "ja")
  show regex("[\p{scx:Han}\p{scx:Hira}\p{scx:Kana}]"): set text(font: "Noto Serif CJK JP")
  set heading(numbering: "1.1.")
  show bibliography: set heading(numbering: "1.")

  // Title row.
  align(center)[
    #block(text(1em, subject))
    #block(text(weight: 700, 1.75em, title))
    #v(1em, weak: true)
    #date
  ]

  // Author information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center)[
        *#author.name* \
        #author.org \
        #author.email
      ]),
    ),
  )

  if abstract != none {
    grid(
      columns: (0.7cm, 1fr, 0.7cm),
      [],
      [
        #heading(outlined: false, numbering: none, text(0.85em, smallcaps[概要 Abstract]))
        #strong(abstract)
        #heading(outlined: false, numbering: none, text(0.85em, smallcaps[キーワード Keywords]))
        #emph(text(keywords.join(", ")))
      ],
      []
    )
    v(1em, weak: false)
  }

  // Main body.
  set par(justify: true)
  show: columns.with(2, gutter: 1.3em)

  body
}