#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

= Introduction

The introduction to a PhD thesis should set the scene for the entire body of work. It should clearly articulate the problem being addressed, motivate the research, and provide the reader with a roadmap of the thesis. Unlike an MSc dissertation, a PhD introduction is expected to establish the broader significance of the research and its intended contributions to the field.

This document has been generated using Typst, a modern typesetting system. The subsections below demonstrate some basic Typst commands and formatting features, alongside the recommended structure for a PhD introduction.

== Motivation

Clearly define the problem or gap in knowledge that your thesis addresses. This section should motivate the research by explaining why this problem is important and what consequences arise from it remaining unsolved.

== Aim and Objectives

State the overall aim of your research and the specific objectives you set out to achieve. The aim is the broad goal of your research, while the objectives are the specific steps you will take to achieve that aim.

== Research Questions

State your overarching research questions. These should flow naturally from the problem statement and guide the structure of your experimental work.

== Thesis Structure

Provide a chapter-by-chapter summary of the thesis structure so the reader understands how the work is organised and how each chapter contributes to answering the research questions.

== Contributions

Summarise the key contributions of this thesis. This section gives the reader an early overview of what the thesis achieves. Contributions may include new frameworks, empirical findings, software artefacts, datasets, or methodological advances.

== List of Publications

If you have published any work during your PhD, list your publications here. This is a common inclusion in PhD theses and demonstrates your contribution to the field. Group publications by type if appropriate.

*Journal Articles*

[Your Name], [Co-author Name], and [Co-author Name] (Year). Title of journal article. _Journal Name_, Volume(Issue), Pages. DOI.

*Conference Papers*

[Your Name] and [Co-author Name] (Year). Title of conference paper. In _Proceedings of Conference Name_, Pages. Publisher.

*Workshop Papers and Posters*

[Your Name] (Year). Title of workshop paper. In _Workshop/Poster Proceedings_, Conference Name.

=== A subheading example: Basic Typst Formatting

The remainder of this section will demonstrate some basic Typst formatting features.

== Formatting Mathematics

Here are two equations:

$ a = b + 1 $ <eq:simple>

$ frac(planck.reduce^2, 2m) nabla^2 Psi + V(bold(r)) Psi = -i planck.reduce frac(diff Psi, diff t) $ <eq:schrodinger>

Inline mathematics can be embedded within body text, for example $(x, y)$, $gamma$, and $rho$.

== Figures and Tables

Here is a sentence, and you can see a nice picture in @fig:SampleCaption.

#figure(
  image("../Images/crop.png", width: 100%),
  caption: [
    An example figure demonstrating image placement.
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
    An example table demonstrating data presentation.
  ],
) <tab:SampleTableCaption>

== Referencing

The included Harvard citation style file means that referencing will follow a Harvard style. You can cite references inline using the `@citekey` syntax. For example, here is a citation @exampleArticle2024. You can also reference conference papers @exampleConference2023 and books @exampleBook2022.

This template uses a BibTeX (`.bib`) file for referencing. It is recommended to use a reference manager such as Zotero to export your references as a `.bib` file. The included citation style file follows the Harvard referencing convention. Confirm the required referencing style with your supervisory team, as conventions may vary between disciplines.
