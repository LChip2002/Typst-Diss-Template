#import "@preview/wordometer:0.1.4": total-words, word-count
#set text(lang: "en")

// Exclude words from tables, figures, captions, and references
#show: word-count.with(exclude: (table, figure, figure.caption, ref, cite))

// Chapter word count tracking
// State to store per-chapter word counts for the summary table

#let chapter-words = state("chapter-words", ())

#let counted-chapter(name, body) = {
  word-count(exclude: (table, figure, figure.caption, ref, cite), total => {
    context chapter-words.update(arr => arr + ((name, total.words),))
    body
  })
}

// Front cover

#include "Report Sections/0-Front-Page.typ"

#pagebreak()

// Front matter (Roman numeral page numbering)

#import "template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)
#set heading(numbering: "1.1")

// Set roman numeral page numbering for front matter
#set page(numbering: "i")

// Declaration
#include "Report Sections/1-Declaration.typ"

#pagebreak()

// Acknowledgements
#include "Report Sections/2-Acknowledgements.typ"

#pagebreak()

// Abstract
#include "Report Sections/3-Abstract.typ"

#pagebreak()

// Contents
#include "Report Sections/4-Contents.typ"

// List of Figures
#outline(title: "List of Figures", target: figure.where(kind: image))

#pagebreak()

// List of Tables
#outline(title: "List of Tables", target: figure.where(kind: table))

#pagebreak()

// List of Acronyms
#include "Report Sections/5-Acronyms.typ"

#pagebreak()

// Body matter (Arabic numeral page numbering)
// Reset to Arabic page numbering for thesis body

#set page(numbering: "1")
#counter(page).update(1)

// Reset heading counter for chapters
#counter(heading).update(0)

// Chapter 1: Introduction
#counted-chapter("Introduction")[
  #include "Report Sections/6-Introduction.typ"
]

// Chapter 2: Background
#counted-chapter("Background")[
  #include "Report Sections/7-Literature-Review.typ"
]

// Chapter 3: Experimental Chapter 1
#counted-chapter("Experimental Chapter 1")[
  #include "Report Sections/8-Experimental-Chapter-1.typ"
]

// Chapter 4: Experimental Chapter 2
#counted-chapter("Experimental Chapter 2")[
  #include "Report Sections/9-Experimental-Chapter-2.typ"
]

// Chapter 5: Experimental Chapter 3
#counted-chapter("Experimental Chapter 3")[
  #include "Report Sections/10-Experimental-Chapter-3.typ"
]

// Chapter 6: Main Findings
#counted-chapter("Main Findings")[
  #include "Report Sections/11-Main-Findings.typ"
]

// Chapter 7: Conclusions and Future Work
#counted-chapter("Conclusions and Future Work")[
  #include "Report Sections/12-Conclusions-And-Future-Work.typ"
]

// References

#pagebreak()

#show: doc => layout.MainPageSettings(doc)
#set par(first-line-indent: 0in)
#set align(left)

#bibliography("refs.bib", style: "template/university-of-lincoln-harvard.csl", title: [References])

// Appendices

#set heading(numbering: none)
#include "Report Sections/13-Appendices.typ"

// Word count summary

#pagebreak()

#set align(center)

#text(size: 14pt, weight: "bold")[
  Word Count Summary
]
#v(0.5em)
#text(size: 10pt)[(excluding figures, tables, captions, and references)]

#v(1em)

#context {
  let counts = chapter-words.final()

  let total = counts.fold(0, (sum, entry) => sum + entry.at(1))

  figure(
    table(
      columns: 2,
      align: (left, center),
      table.header[*Chapter*][*Word Count*],
      ..counts.map(entry => (entry.at(0), str(entry.at(1)))).flatten(),
      table.hline(stroke: 1.5pt),
      [*Total*], [*#total*],
    ),
    kind: "wc-table",
    supplement: none,
    caption: none,
  )

  v(1em)

  text(size: 14pt, weight: "bold")[
    Overall Word Count:
    #h(0.5em)
    #text(size: 20pt, weight: "bold", fill: blue)[
      #total words
    ]
  ]
}
