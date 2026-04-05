# A Collection of Typst Templates for Dissertations, Theses and Academic Writing at the University of Lincoln

## Description

This repository provides three templates for writing academic reports, dissertations and theses using [Typst](https://typst.app/), a modern typesetting system. Each template provides a structured format tailored for academic writing at the University of Lincoln, ensuring consistency and ease of use.

<div align="center">
<br>

| Folder | Degree Level | Status |
|--------|-------------|--------|
| `BSc-Dissertation-Template` | BSc (Hons) Undergraduate Dissertation | Stable — used for several successfully submitted dissertations |
| `MSc-Dissertation-Template` | MSc/MRes Postgraduate Dissertation | Stable — used for successfully submitted dissertations |
| `PhD-Thesis-Template` | PhD Doctoral Thesis | Work in progress — will continue to be developed |

<br>
</div>

The BSc and MSc templates are considered feature-complete and are in a stable state unless issues are raised or contributions are submitted via pull requests. The PhD template will receive ongoing updates over the coming years. It should be noted that PhD thesis layouts can vary significantly between disciplines and institutions — this template provides a strong starting point for anyone who would like to use Typst for their thesis.

## Requirements

- Any IDE that supports the Tinymist extension. The following are known to be compatible:
  - [Visual Studio Code](https://code.visualstudio.com/)
  - [Google Antigravity](https://plugins.jetbrains.com/plugin/227-google-antigravity)
- [Tinymist](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) - Most up-to-date version of the Tinymist extension for your IDE (v0.14.14 as of April 2026)
- [vscode-pdf](https://marketplace.visualstudio.com/items?itemName=tomoki1207.pdf) - Most up-to-date version of the extension to display the compiled PDF in your IDE

## Installation Instructions

1. Ensure the required software and extensions listed in the [Requirements](#requirements) section above are installed.
2. Navigate to the repository on GitHub and click **Use this template**, then select **Create a new repository** to create your own copy.
3. Clone your new repository to a local directory. (See [Resources](#typst--git-resources) for help)
4. Open the cloned `Typst-Diss-Template` folder in your IDE.
5. Check that you can generate the document from the template using the [How to Compile](#how-to-compile) instructions.
6. If you want to check for any spelling or grammar errors, it is advised that you use an external application such as Word, Grammarly, or Google Docs, as spell checking support varies across IDEs.

## How to Compile

### Option 1 - Preview

Previewing a document allows you to view a version of the document that updates with live edits you make to the Typst Code.

1. You will need to make sure you are in the main Typst file that contains all the different report sections. For the BSc and MSc templates this is `Typst-Dissertation-Template.typ`, and for the PhD template this is `Typst-PhD-Thesis.typ`.
2. Select the preview button at the top of your IDE to open a live preview of the document.
3. If there is an error in the Typst code, the preview will not be displayed.

<br>
<p align="center">
<img src="./Tutorial%20Screenshots/preview.png">
</p>

### Option 2 - Export PDF

To generate a PDF file for submission or sharing with others:

1. Similar to how you would preview a document, you need to go to the top of the main Typst file. For the BSc and MSc templates this is `Typst-Dissertation-Template.typ`, and for the PhD template this is `Typst-PhD-Thesis.typ`.
2. Select the export PDF option or press the PDF icon at the top of your IDE to compile the document.
3. Again, if there is an error in the Typst code, the PDF will not compile.
4. The compiled PDF will be outputted with the same name as the main file in the same directory, and can be opened in your IDE or any PDF viewer.
5. Every time you compile a PDF, the previous one is replaced with the newly compiled version.

<br>
<p align="center">
<img src="./Tutorial%20Screenshots/inline_export_pdf.png">

<br>
<br>

<img src="./Tutorial%20Screenshots/pdf_compile.png">
</p>

## How to Use

### Document Structure

- Each template is structured so that every required section is separated as its own file within the template directory.
- This allows you to easily find the section you are working on and compile it individually if needed.
- The structure of each template varies depending on the degree level, so make sure you are working within the correct template folder for your qualification.
- You will need to make edits in these sections to add your work, and each section will contain instructions of what should go in what based on previous templates as well as examples of tables, figures, references, etc in Typst.

<br>
<p align="center">
<img src="./Tutorial%20Screenshots/doc_structure.png">
</p>
<br>

### Appendices

In this section, there are examples of techniques for things like code snippets and flowcharts that you can manually make in Typst.

### References

In academic writing, you will need to evidence your arguments with academic literature and external sources. Referencing in Typst is very similar to LaTeX — you will need a BibTeX `.bib` file to store all your references, which can then be cited by tagging them using the `@` symbol followed by the reference name.

<br>
<p align="center">
<img src="./Tutorial%20Screenshots/bib.png">
</p>
<br>

To make collecting and managing references easier, a reference management tool such as [Zotero](https://www.zotero.org) allows you to export citations directly as a `.bib` file to use in your Typst document.

### Template File

- The layout-template.typ provides all the formatting to the document to lay it out similar to existing dissertation templates.
- If you want to change the layout, font or other properties of the template, then you will need to make adjustments here on your template.

## Issue Reporting
If you encounter any issues or have suggestions for improvements, please report them by creating a new issue on the [GitHub repository](https://github.com/LChip2002/Typst-Diss-Template/issues). Provide as much detail as possible, including steps to reproduce the issue, screenshots, or error messages if applicable.

## Typst & Git Resources
- [Typst Docs](https://typst.app/docs/)
- [Zotero](https://www.zotero.org)
- [Codelst Library](https://typst.app/universe/package/codelst/)
- [Fletcher Library](https://typst.app/universe/package/fletcher/)
- [Create a GitHub Template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
- [Git Clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)
