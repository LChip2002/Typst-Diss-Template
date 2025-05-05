# A Typst Template for Dissertation and Academic Writing at the University of Lincoln

## Description:
This template is designed for creating academic reports and dissertations using Typst, a modern typesetting system. It provides a structured format tailored for academic writing at the University of Lincoln, ensuring consistency and ease of use.

## Requirements:
- Visual Studio Code
- Most up-to-date version of the Tinymist VS Code extension (v0.13.10 as of April 2025)
- vscode-pdf - Most up-to-date version of the extension to display the compiled PDF in the VSCode IDE.

## Installation Instructions:
1. Ensure the required software and extensions above are installed.
2. Press use this template on the repo and create a new repository using this Typst Template.
3. Clone that repo to a local repository. (See [Resources](#typst--git-resources)) 
4. Open the Typst-Diss-Template folder in a new VSCode window.
5. Check that you can generate the document from the template using the [How to Compile](#how-to-compile) instructions.
6. If you want to check for any spelling or grammar errors, it is advised that you use an external application like Word, Grammarly or Google Docs due to the lack of support in VSCode.

## How to compile docs:

### Option 1 - Preview:
Previewing a document allows you to view a version of the document that updates with live edits you make to the Typst Code.
1. You will need to make sure you are in the typst file that contains all the different report sections. E.g. **Typst-Dissertation-Template.typ**.
2. Then at the top of the page, you will see this preview button which will allow you to preview the document you are working on.
3. If there is an error in the Typst code, then the preview will not be outputted.

![Preview Report](./Tutorial%20Screenshots/preview.png)

### Option 2 - Export PDF:
This is what you will need to do to generate a PDF file for you to use to send off as a full document to others or during assignment submissions.
1. Similar to how you would preview a document, you need to go to the top of the file of the main typst file (e.g. Typst-Dissertation-Template.typ).
2. This time you can either select export PDF or press the PDF icon in the top right of the VSCode tab to compile the document.
3. Again, if there was an error, then the PDF will not compile.
4. The compiled PDF will be outputted with the same name as the main file in the same directory and can be opened as a full PDF in the IDE or using any PDF viewer.
5. Everytime you compile a PDF, the current one gets replaced with the newly compiled one.


![Preview Report](./Tutorial%20Screenshots/inline_export_pdf.png)

![Preview Report](./Tutorial%20Screenshots/pdf_compile.png)

## How to use:

### Document Structure:
- As seen in the image below, within the directory, each required section of the dissertation report is seperated as it's own file. 
- This is so you can easily find which section you are working on and can compile that section individually if you want to.
- You will need to make edits in these sections to add in your work to each of these dissertation sections.
- Each section will have instructions of what should go in what based on previous templates as well as examples of tables, figures, references, etc in Typst.

![Structure](./Tutorial%20Screenshots/doc_structure.png)

### Appendicies:
In this section, there are examples of techniques for things like code snippets and flowcharts that you can manually make in Typst.

### References
In academic writing, you will need to evidence your arguments with academic literature and external sources. To reference your sources in Typst, it is very similar to LaTeX where you will need a BibTex .bib file that will store all your references and you can call then by tagging them using an @ and the reference name.

![Bib](./Tutorial%20Screenshots/bib.png)

To make collecting and writing these references easier, using a reference management tool like [Zotero](https://www.zotero.org) allows you to get citations from a click of a button to store in a reference collection that you can export as a .bib file to put straight into your Typst doc.

### Template File
- The **layout-template.typ** provides all the formatting to the document to lay it out similar to exisiting dissertation templates.
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

