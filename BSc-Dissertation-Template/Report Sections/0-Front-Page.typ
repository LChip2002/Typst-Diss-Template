#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

// FRONT PAGE LAYOUT
// BSc Dissertation — University of Lincoln

#set align(center)

#v(1fr)

// Title
#text(24pt, weight: "bold")[
  [Insert Project Title Here]
]

#v(1.5cm)

// University branding
#image("../Images/uni_crest.jpg", width: 60%)

#v(1.5cm)

// Author information
#text(12pt)[
  [Your Full Name] \
  [Your Student ID]
]

#v(0.45cm)

// Contact
#text(12pt)[
  StudentID\@students.lincoln.ac.uk
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

#v(1.5cm)

// Submission statement
#block(width: 85%)[
  #text(12pt)[
    Submitted in partial fulfilment of the requirements for the \
    Degree of [Your Degree Programme e.g. Bachelor of Science with Honours in Computer Science]
  ]
]

#v(1cm)

// Supervisor
#text(12pt)[
  Supervisor: [Insert Supervisor Name Here]
]

#v(1cm)

// Submission date
#text(12pt)[
  [Month Year]
]

#v(1fr)
