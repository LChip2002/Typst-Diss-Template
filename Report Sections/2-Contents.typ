#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

#show outline.entry.where(
  level: 1
): it => {
  v(12pt, weak: true)
  strong(it)
}
#outline(indent: auto)

#pagebreak()