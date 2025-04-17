
// Title Page/Front Page
#include "Report Sections/Front-Page.typ"

#pagebreak()

#import "template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

// Different sections of the report including the contents page
#include "Report Sections/0-Acknowledgements.typ"
#include "Report Sections/1-Abstract.typ"
#include "Report Sections/2-Contents.typ"
// Resets the counter for the headings
#counter(heading).update(0)

#include "Report Sections/3-Introduction.typ"
#include "Report Sections/4-Literature-Review.typ"
#include "Report Sections/5-Requirements-Analysis.typ"
#include "Report Sections/6-Design-&-Methodology.typ"
#include "Report Sections/7-Implementation.typ"
#include "Report Sections/8-Results-&-Discussion.typ"
#include "Report Sections/9-Conclusion.typ"
#include "Report Sections/10-Appendices.typ"

#pagebreak()

// References section
#show: doc => layout.MainPageSettings(doc)
#set par(
  first-line-indent: 0in
)

#set align(left)

#bibliography("refs.bib", style: "template/university-of-lincoln-harvard.csl", title:[References])