#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

#set align(center)

#pad(top: 15pt)[
    #set align(center)
    #text(20pt)[*Your Project Title.*
]]

#pad(top: 15pt)[
#image("../Images/uni_crest.jpg", width: 60%)
]

#pad(top: 30pt)[
  #set align(center)
  #text(10pt)[
      [Insert Name Here] \

      [Insert Student ID Here] \
  ]
]

#pad(top: 10pt)[
  #set align(center)
  #text(10pt)[
      StudentID\@students.lincoln.ac.uk
  ]
]

#pad(top: 5pt)[
  #set align(center) 
  #text(10pt)[
      University of Lincoln, School of Engineering and Physical Sciences \

      College of Health and Science \

      University of Lincoln \
  ]
]

#block(width: 10cm)[
#pad(top: 20pt)[
  #set align(center)
  #text(10pt)[
  Submitted in partial fulfilment of the requirements for the \
  Degree of [Your degree programme e.g. Bachelor of
  Science with Honours in Computer Science]
  ]
]
]

#pad(top: 20pt)[
  #set align(center)
  #text(10pt)[
      Supervisor: [Insert Supervisor Name Here] \
      \

      [Month Year] \
  ]
]
