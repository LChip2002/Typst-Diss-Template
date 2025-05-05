#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

= Introduction

// TODO - Edit this to suit new creator and that it is a public github repo and where to raise issues
This document is a project report template for the School of Computer Science, University of Lincoln. It should give you some direction and instruction for formatting and presenting your project report. If you have any suggestions or issues, please raise an issue on the Typst-Template Repository. Currently, this template is designed for undergraduate project reports. However, the template can be modified fairly easily to conform to, for example, an MComp project report.

== Subheading

=== Sub-subheading

== Figures
// TODO - Move or Remove below

Lipsum anus duis mollis, inceptos ridiculus mus. Aenean ligula ligula, mollis inceptos, congue aenean, inceptos ligula. Aenean ligula ligula mollis inceptos, congue aenean, inceptos ligula. Aenean ligula ligula, mollis inceptos, congue aenean, inceptos ligula. Aenean ligula ligula @test_2025. @fig:SampleCaption

#figure(
  image("../Images/crop.png", width: 23%),
  caption: [
    Sample caption.
  ],
)<fig:SampleCaption>

#h(15pt)Test Test Test
