

#let MainPageSettings(doc
  ) = {

  let PAR_INDENT = 15pt
  let TOP_PAGE_MARING = 40mm
  let TITLE_SIZE = 14pt

  set align(left)
  //set document(author: "test", title: "title")
  set text(
    font: "New Computer Modern",
    size: 12pt
  )

  set par(
    first-line-indent: PAR_INDENT,
    justify: true,
    leading: 0.52em,
  )

  // show par: set block(spacing: 0.4em)

  // PAGE CONFIG
  set page(paper: "a4")
  set page(margin: (left: 44mm, right: 44mm, top: TOP_PAGE_MARING, bottom: 45mm))

// Set headers and page numbering
  set page(header: context{
    
    if here().page() == 1 {
      return []
    }

    let alignment = if (calc.rem(here().page(), 2) == 1) { right } 
    else { left }
    align(alignment)[
      #counter(page).display()
    ]
  })
    

  // HEADING CONFIGS
  set heading(numbering: "1.1")
  // padding
  show heading.where(level: 1): pad.with(bottom: 0.2em, top: 0em)
  show heading.where(level: 2): pad.with(bottom: 0.3em, top: 0.2em)
  show heading: it => {

    // Set the default font and size for all headings
    set text(23pt, weight: "bold")

    // Checks heading level
    if it.body == [References] {
      [References]
      set heading(numbering: none)

    } 
    else if it.body == [Acknowledgements] {
      [Acknowledgements]
      set heading(numbering: none)
    } 
    else if it.body == [Table of Contents] {
      [Table of Contents]
      set heading(numbering: none)
      [#linebreak()]
      [#linebreak()]

    }
    else if it.body == [List of Figures] {
      [List of Figures]
      set heading(numbering: none)
      [#linebreak()]
      [#linebreak()]

    } 
    else if it.body == [List of Tables] {
      [List of Tables]
      set heading(numbering: none)
      [#linebreak()]
      [#linebreak()]
    }
    else if it.body == [Abstract] {
      [Abstract]
      set heading(numbering: none)
    } 
    else if it.body == [Contents] {
      [Table of Contents]
      set heading(numbering: none)
    }
    else if it.body == [Appendices] {
      [Appendices]
      set heading(numbering: none)
    }
    else {

      // Set the font and size for all headings based on their level
      if it.level == 1 {
        set text(22pt, weight: "bold")
        set align(left)
        show heading.where(level: 1): it => {
          if it.body != text("Inhaltsverzeichnis") {  // Text comparison
            grid(
              align: bottom,  // Align content to bottom of grid row
              columns: (6fr, 1fr),
              row-gutter: 1.5em,  // Vertical spacing
              [Chapter #counter(heading).display()],  // Left top column
              [], // Empty column
              [#it.body],// bottom column
            )
          }
        }
        // Adding spacing between header and text.
        show heading.where(level: 1): pad.with(bottom: 1.3em, top: 0em)
      it
      } else if it.level == 2 {
          set text(17pt, weight: "bold")
          it
      } else if it.level == 3 {
          set text(14.5pt, weight: "bold")
          it
          //[#v(2em)#h(PAR_INDENT) #it.body]
      } else if it.level == 4 {
          set text(10pt, weight: "bold")
          it
      }
    }



  }

   set super(size: 8pt)

  let is_long_caption = false

  //  FIGURE CONFIG
  set figure.caption(separator: [. ]) // separator to .
  show figure.caption: it => context {
    [#it.supplement#it.counter.display(it.numbering)#it.separator#it.body] // bold figure kind
  }

  // LIST CONFIG
  set list(indent: 15pt, spacing: 0.5em)

  show figure.where(kind: table): set figure.caption(position: top) // caption for table above figure
  set figure(gap: 12pt)
  show figure: pad.with(top: 0.3em, bottom: 0.8em)
  show figure: set text(9pt)
  // let Figure display as Fig
  let fig_replace(it) = {
    show "Figure": "Fig."
    it
  }

  show figure.where(kind: image): fig_replace
  show ref: fig_replace


  doc
}