#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

#set align(center)

#v(1fr)

// Title
#text(24pt, weight: "bold")[
  [Insert Project Title Here]
]

#v(1.0cm)

// University branding
#image("../Images/uni_crest.jpg", width: 85%)

#v(1.0cm)

// Author information
#text(12pt)[
  [Insert Full Name Here] \
]

#v(0.45cm)

// Institution details
#text(12pt)[
  School of [School Name] \
  #v(0.25cm)
  College of [College Name] \
  #v(0.25cm)
  University of Lincoln
]

#v(1.0cm)

// Submission statement
#block(width: 85%)[
  #text(12pt)[
    Submitted in partial satisfaction of the requirements for the
    Degree of Doctor of Philosophy \
    in [Subject Area]
  ]
]

#v(1cm)

// Supervision team
#text(12pt)[
  Primary Supervisor: [Primary Supervisor Name] \
  Secondary Supervisor: [Secondary Supervisor Name]\
  Third Supervisor: [Third Supervisor Name]
]

#v(1cm)

// Submission date
#text(12pt)[
  [Month Year]
]

#v(1fr)
