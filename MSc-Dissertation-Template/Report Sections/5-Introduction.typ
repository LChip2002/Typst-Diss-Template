#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

= Introduction

The introduction should give an excellent overview of the project background and set the scene for the reader. It should establish the context and significance of your work, and provide a clear motivation for why this project is worth undertaking. By the end of this chapter, the reader should understand the problem space and be eager to learn more.

This document is a project report template for the School of Computer Science at the University of Lincoln. It should give you some direction and instruction for formatting and presenting your project report. This template is designed for postgraduate project reports, however, templates are also available for undergraduate dissertations and doctoral theses on the same GitHub repository.

This document has been generated using Typst, a modern typesetting system. The following subsections of this chapter demonstrate some basic Typst commands and formatting features.

== Background and Motivation

Introduce the broad topic area and explain why it is important or relevant. This section should provide enough context for a reader unfamiliar with the domain to understand the significance of your work. You may wish to include a brief historical overview of key developments in the field to show how the current state of the art has been reached.

== Subheading

== Sub-subheading

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
    [Bob], [Bobbington], [24],
    [Benth], [Wavies], [49],
    [Joe], [Bloggs], [37],
    [Billy], [Bob], [10],
  ),
  caption: [
    Here is a table. The caption goes above like this.
  ],
) <tab:SampleTableCaption>

== Referencing

The included Harvard citation style file means that referencing will follow a Harvard style. You can cite references inline using the `@citekey` syntax. For example, here is a citation @exampleArticle2024. You can also reference conference papers @exampleConference2023 and books @exampleBook2022.

It is worth noting that the standard for referencing is Harvard, so you will not need to change this option. However, please double and triple check this to make sure you are using the correct referencing style. Also, ask your supervisor to make sure. This template uses a BibTeX (`.bib`) file for referencing. It is recommended to use a reference manager such as Zotero to export your references as a `.bib` file.
