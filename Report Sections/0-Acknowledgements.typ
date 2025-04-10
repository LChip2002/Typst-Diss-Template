#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

= Heading 1 

== Heading 1.1

== Heading 1.1.1

Lipsum anus duis mollis, inceptos ridiculus mus. Aenean ligula ligula, mollis inceptos, congue aenean, inceptos ligula. Aenean ligula ligula mollis inceptos, congue aenean, inceptos ligula. Aenean ligula ligula, mollis inceptos, congue aenean, inceptos ligula. Aenean ligula ligula @test_2025. @fig:SampleCaption

#figure(
  image("../Images/crop.png", width: 23%),
  caption: [
    Sample caption.
  ],
)<fig:SampleCaption>

#h(15pt)Test Test Test
