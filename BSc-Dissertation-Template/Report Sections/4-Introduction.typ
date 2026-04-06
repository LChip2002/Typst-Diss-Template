#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

= Introduction

This document is a project report template for the School of Computer Science at the University of Lincoln. It should give you some direction and instruction for formatting and presenting your project report.  This template is designed for undergraduate project reports, however, templates  are also available for postgraduate dissertations and doctoral theses on the same GitHub repository. If you have any suggestions or issues, please raise an issue on the GitHub repository.

This document has been generated using Typst, a modern typesetting system. The following subsections of this chapter demonstrate some basic Typst commands and formatting features. If you would prefer to use the supplied Word template, then you should aim to replicate the formatting shown here.

== Subheading

=== Sub-subheading

== Formatting Mathematics

Here are two equations:

$ a = b + 1 $ <eq:simple>

$ frac(planck.reduce^2, 2m) nabla^2 Psi + V(bold(r)) Psi = -i planck.reduce frac(diff Psi, diff t) $ <eq:schrodinger>

And here is some text with some nice inline maths, $(x, y)$ wow $gamma$ so cool $rho$.

== Figures and Tables

Here is a sentence, and you can see a nice picture in @fig:SampleCaption.

#figure(
  image("../Images/crop.png", width: 100%),
  caption: [
    A picture of the Brayford from Google Images.
  ],
) <fig:SampleCaption>

Also, a table can be found in @tab:SampleTableCaption.

#figure(
  table(
    columns: 3,
    table.header[*First Name*][*Last Name*][*Age*],
    [John], [Doe], [25],
    [Jane], [Smith], [30],
    [Alice], [Johnson], [22],
    [Billy], [Joel], [28],
  ),
  caption: [
    Here is a table. The caption goes above like this.
  ],
) <tab:SampleTableCaption>

== Referencing

The included Harvard citation style file means that referencing will follow a Harvard style. You can cite references inline using the `@citekey` syntax. For example, here is a citation @exampleArticle2024. You can also reference conference papers @exampleConference2023 and books @exampleBook2022.

It is worth noting that the University of Lincoln's standard for referencing is Harvard, so you will not need to change this option. However, please double and triple check this to make sure you are using the correct referencing style. Also, ask your supervisor if you are unsure. This template uses a BibTeX (`.bib`) file for referencing. It is recommended to use a reference manager such as Zotero to export your references as a `.bib` file.
