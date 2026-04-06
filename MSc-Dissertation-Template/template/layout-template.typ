#let MainPageSettings(doc) = {

  // CONFIGURATION VARIABLES

  // Spacing
  let PAR_INDENT = 0pt                  // First-line paragraph indent
  let LINE = 0.52em                     // Line spacing
  let PAR = 2 * LINE                    // Paragraph spacing (2x line spacing)
  let H_ABOVE = PAR                     // Space above non-chapter headings
  let H_BELOW = PAR                     // Space below non-chapter headings
  let SPECIAL_BELOW = 1.5 * PAR         // Space below special headers
  let TOC_BELOW = 5 * PAR              // Extra space below Table of Contents title
  let TOP_PAGE_MARGIN = 40mm            // Top page margin

  // Font sizes
  let SPECIAL_HEADING_SIZE = 23pt       // Special headings (References, Abstract, etc.)
  let CHAPTER_SIZE = 22pt               // Chapter heading size
  let SECTION_SIZE = 17pt               // Section heading size
  let SUBSECTION_SIZE = 14.5pt          // Subsection heading size
  let SUBSUBSECTION_SIZE = 10pt         // Sub-subsection heading size
  let BODY_SIZE = 12pt                  // Body text size
  let INFO_SIZE = 10pt                  // Info text size
  let CAPTION_SIZE = 9pt                // Figure/table caption size
  let SUPER_SIZE = 8pt                  // Superscript size


  // BASE TEXT SETTINGS

  set align(left)
  set text(font: "New Computer Modern", size: BODY_SIZE)


  // PARAGRAPH SETTINGS

  set par(
    first-line-indent: PAR_INDENT,
    justify: true,
    leading: LINE,
  )


  // PAGE SETTINGS

  set page(
    paper: "a4",
    margin: (left: 44mm, right: 44mm, top: TOP_PAGE_MARGIN, bottom: 45mm),
  )

  // Header with alternating page numbers (no header on page 1)
  set page(header: context {
    if here().page() == 1 { return [] }

    let alignment = if calc.rem(here().page(), 2) == 1 { right } else { left }

    align(alignment)[
      #counter(page).display()
    ]
  })


  // HEADING SETTINGS
  // NOTE: heading numbering is set in the main template file, not here,
  // so that it can be disabled for appendices.

  show heading.where(level: 1): pad.with(bottom: 0.2em, top: 0em)
  show heading.where(level: 2): pad.with(bottom: 0.3em, top: 0.2em)

  show heading: it => {
    set text(SPECIAL_HEADING_SIZE, weight: "bold")

    // Table of Contents headings (extra spacing below)
    if it.body == [Contents] {
      block(above: H_ABOVE, below: TOC_BELOW)[
        #text(SPECIAL_HEADING_SIZE, weight: "bold")[Table of Contents\ \ ]
      ]
    } else if it.body == [Table of Contents] {
      block(above: H_ABOVE, below: TOC_BELOW)[
        #text(SPECIAL_HEADING_SIZE, weight: "bold")[#it.body]
      ]

    // Special headings (unnumbered, standard special spacing)
    } else if (it.body == [References] or
               it.body == [Acknowledgements] or
               it.body == [List of Figures] or
               it.body == [List of Tables] or
               it.body == [Abstract] or
               it.body == [Glossary] or
               it.body == [Appendices]) {
      block(above: H_ABOVE, below: SPECIAL_BELOW)[
        #text(SPECIAL_HEADING_SIZE, weight: "bold")[#it.body]
      ]

    // Numbered headings
    } else if it.level == 1 {
      // Chapter headings — "Chapter N" label above title (grid layout)
      set text(CHAPTER_SIZE, weight: "bold")
      set align(left)
      if it.numbering != none and it.body != text("Inhaltsverzeichnis") {
        show heading.where(level: 1): it => {
          grid(
            align: bottom,
            columns: (6fr, 1fr),
            row-gutter: 1.5em,
            [Chapter #counter(heading).display()],
            [],
            [#it.body],
          )
        }
        show heading.where(level: 1): pad.with(bottom: 1.3em, top: 0em)
        it
      } else {
        block(above: H_ABOVE, below: H_BELOW)[#it]
      }
    } else if it.level == 2 {
      set text(SECTION_SIZE, weight: "bold")
      it
    } else if it.level == 3 {
      set text(SUBSECTION_SIZE, weight: "bold")
      it
    } else if it.level == 4 {
      set text(SUBSUBSECTION_SIZE, weight: "bold")
      it
    }
  }


  // SUPERSCRIPT SETTINGS

  set super(size: SUPER_SIZE)


  // FIGURE AND TABLE SETTINGS

  set figure.caption(separator: [. ])
  show figure.caption: it => context {
    [#it.supplement#it.counter.display(it.numbering)#it.separator#it.body]
  }

  // Table captions above the table
  show figure.where(kind: table): set figure.caption(position: top)

  set figure(gap: 12pt)
  show figure: pad.with(top: 0.3em, bottom: 0.8em)
  show figure: set text(CAPTION_SIZE)

  // Replace "Figure" with "Fig." in captions and references
  let fig_replace(it) = {
    show "Figure": "Fig."
    it
  }
  show figure.where(kind: image): fig_replace
  show ref: fig_replace


  // LIST SETTINGS

  set list(indent: 15pt, spacing: 0.5em)


  // RENDER DOCUMENT

  doc
}
