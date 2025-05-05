#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

#show outline.entry.where(level: 1): it => {
  // Get the text content of the heading associated with the outline entry
  let entry_title = it.element.body.text

  // Check if the title is NOT one of the excluded ones
  if entry_title != "Acknowledgements" and entry_title != "Abstract" {
    // Apply your custom styling
    v(12pt, weak: true)
    strong(it)
  }
  else {
    // Otherwise, just render the entry normally (default style)
    
  }
}
#outline(indent: auto)

#pagebreak()