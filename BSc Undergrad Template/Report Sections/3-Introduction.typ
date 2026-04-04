#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

= Introduction

// TODO - Edit this to suit new creator and that it is a public github repo and where to raise issues
This document is a project report template for the School of Computer Science, University of Lincoln. It should give you some direction and instruction for formatting and presenting your project report. If you have any suggestions or issues, please raise an issue on the Typst-Template Repository. Currently, this template is designed for undergraduate project reports. However, the template can be modified fairly easily to conform to, for example, an MComp project report.

== Subheading

=== Sub-subheading

== Formmatting Mathematics
Here are two equations:



And here is some text with some nice inline maths, (x,y) wow γ so cool ρ.

== Figures
// TODO - Move or Remove below

Here is a sentence, and you can see a nice picture in @fig:SampleCaption. @test_2025. 

#figure(
  image("../Images/crop.png", width: 100%),
  caption: [
    A picture of the Brayford from Google Images.
  ],
)<fig:SampleCaption>

// Using the #h command, gives the required spacing needed for the line after a figure to allign with formatting requirements.

#h(15pt)Also, a table can be found in @tab:SampleTableCaption.
#figure(
table(
  columns: 3,
  rows: 4,
  table.header[*First Name*][*Last Name*][*Age*],
  [John], [Doe], [25],
  [Jane], [Smith], [30],
  [Alice], [Johnson], [22],
  [Bob], [Brown], [28],
  
),
caption: [
  Here is a table. The caption goes above like this.
],
)<tab:SampleTableCaption>

== Referencing

Here is an example of a citation using the Lincoln Harvard style @test_2025. These references are automatically generated from the BibTeX (.bib) file. You can add your own references to the BibTeX file, and they will be included in the bibliography. 
