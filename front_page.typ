#import "template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

#set align(center)

#pad(top: 15pt)[
    #set align(center)
    #text(14pt)[*Insert Title Here.*
]]

#pad(top: 30pt)[
  #set align(center)
  #text(10pt)[
      Insert Name Here
  ]
]

#pad(top: 5pt)[
  #set align(center) 
  #text(9pt)[
      University of Lincoln, School of Engineering and Physical Sciences \
      \
      StudentID\@students.lincoln.ac.uk
  ]
]

#block(width: 10cm)[
#pad(top: 20pt)[
  #set align(left)
  #text(9pt)[
  *Abstract.* Fun Fun Fun.

  \
  *Keywords:* Fun, Lipsum.
  ]
]
]
