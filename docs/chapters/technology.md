# Technology Overview

::: box :::

**Lantern assumes no prior experience with writing code.** Lantern provides all of the necessary guides, templates, and scripts to begin publishing open textbooks.

Lantern teaches two production workflows that use plain text to format chapter content and produce open textbooks in multiple formats from a single source. Specifically, Lantern will help you...

1. Convert textbook manuscripts from common word processing formats to Markdown
2. Format chapter content using Markdown syntax with a text editor
3. Publish textbooks as a website with PDF, EPUB, LATEX, and DOCX download options

:::

## Selecting a Production Workflow

We recommend the online workflow to first-time users of Lantern and the Desktop workflow to advanced users looking for more flexibility and customization.

- The **online** workflow is the simpler option, but it relies on [GitHub](https://github.com/) for document processing. This workflow does not use the command line or require any software installations.

- The **desktop** workflow is more complicated, but removes GitHub as a dependency. Some free software installation is required. This workflow uses the command line to run scripts that Lantern provides.

Both workflows use [GitHub Pages](https://https://pages.github.com/) as a web hosting service, but the output files can be uploaded to any other basic web hosting service. 

## Processing Software

Lantern uses a few open source programs to make the publishing outputs, but you won't interact with these programs directly if you're using the online workflow:

- [Pandoc](https://pandoc.org/) uses the Markdown source files to produce the textbook editions
- [LaTeX](https://www.latex-project.org/) is used by Pandoc to typeset and build the PDF edition
- [Bash](https://www.gnu.org/software/bash/) is the shell used for handling input and output files
- [Make](https://www.gnu.org/software/make/) simplifies the production settings and processes

The online workflow provides a GitHub repository that is preconfigured to run all of the required processing scripts using [GitHub Actions](https://github.com/features/actions). The Desktop workflow requires installing and using Pandoc, LaTeX, Bash, and Make to produce the output files on your computer.

| Requirements | Online | Desktop |
|-|-|-|
| Word Processor | Yes | Yes |
| GitHub Account | Yes | No |
| Text Editor | No | Yes |
| Pandoc | No | Yes |
| LaTeX | No | Yes |
| Bash | No | Yes |
| Make | No | Yes |

## Document Markup in Manuscript Files

Word processing formats like `.docx`, `.odt`, or `.rtf` are helpful to authors for writing their manuscripts, but can be problematic for digital production and archiving because editors like Microsoft Word and Google Docs obscure the semantic elements of the document. 

::: example :::

For example, a Microsoft Word document might visually display a subheading using centered horizontal alignment and a bold typeface. While sighted people may be able to understand this as a heading, screen-readers wouldn't be able to distiguish it from any other paragraph in the document. Document markup identifies semantic elements explicitly through the use of tags. 

:::

Lantern requires manuscript files to be formatted as Markdown (`.md`) files. Markdown is the syntax and file format we'll use for tagging structural elements within the textbook chapters, such as headings.

> The idea is to identify logical structures in your document (a title, sections, subsections, footnotes, etc.), mark them with some unobtrusive characters, and then “compile” the resulting text with a typesetting interpreter which will format the document consistently, according to a specified style. [@tenen_sustainable_2014]

## Pandoc: Building Textbook Editions

[Pandoc](https://pandoc.org/) is the primary document processing software that Lantern uses to convert manuscript files into multiple textbook editions. Pandoc was designed to be a "universal document converter" for various markup formats.  

### Lantern supported file formats

Lantern provides [conversion scripts](https://github.com/nulib-oer/lantern/blob/main/assets/scripts/preprocess.sh) for a subset of file formats that Pandoc is able to convert. 

| File Extensions | Format             | Related Applications                     |
|-----------------|--------------------|------------------------------------------|
| `.docx`         | Open Office XML    | Microsoft Word, Google Docs, LibreOffice |
| `.odt`          | Open Document Text | Microsoft Word, Google Docs, LibreOffice |
| `.tex`          | LaTeX              | Plain text editor (e.g. VS Code)     |

: Lantern will convert these file formats to Markdown

Lantern also provides [templates](https://github.com/nulib-oer/lantern/tree/main/assets/templates) for producing multiple publication formats from Markdown.

| File Extensions | Format             | Related Applications                          |
|-----------------|--------------------|-----------------------------------------------|
| `.docx`         | Office Open XML    | Microsoft Word, Google Docs, LibreOffice      |
| `.tex`          | LaTeX              | Plain text editor (e.g. VS Code)              |
| `.html`         | HTML5              | web browsers                                  |
| `.epub`         | EPUB3              | Calibre, Adobe Digital Editions, web browsers |
| `.pdf`          | PDF                | Adobe Acrobat Reader, web Browsers            |

: Lantern can produce these publication formats