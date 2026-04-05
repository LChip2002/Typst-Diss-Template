#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

// TABLE OF CONTENTS FORMATTING

#show outline.entry: pad.with(bottom: 0.25em)

#show outline.entry.where(level: 1): it => {
  v(0.55em, weak: true)
  strong(it)
}

// GENERATE TABLE OF CONTENTS

#outline(
  title: "Contents",
  indent: auto,
)

#pagebreak()
