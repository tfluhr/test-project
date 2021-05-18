# Technology Overview

::: summary :::

Lantern teaches two production workflows that use [Markdown](https://en.wikipedia.org/wiki/Markdown) to format chapter content and [Pandoc](https://pandoc.org/) to produce web, PDF, and word processing editions of open textbooks. Specifically, Lantern will help you...

1. Convert textbook manuscripts from common word processing formats to Markdown
2. Format chapter contents in Markdown with a text editor
3. Publish textbooks as a website with PDF, EPUB, and word processing format download options

**Lantern assumes no prior experience with writing code.** Lantern provides all of the necessary guides, templates, and scripts to begin publishing open textbooks.

:::

## Selecting a Production Workflow

We recommend the online workflow to first-time users of Lantern and the Desktop workflow to advanced users looking for more customizations.

- The **online** workflow is the simpler option, but it relies on [GitHub](https://github.com/) for document processing. Some free software installation is recommended but not required. This workflow does not use the command line.

- The **desktop** workflow is more complicated, but removes GitHub as a dependency. Some free software installation is required. This workflow uses the command line to run scripts that Lantern provides.

Both workflows use [GitHub Pages](https://https://pages.github.com/) as a web hosting service, but you will be free to use any other web hosting service. 

## Processing Software

Lantern uses a few open source software programs to make the publishing outputs, but you won't interact with these programs if you're using the online workflow:

- [Pandoc](https://pandoc.org/) uses the Markdown source files to produce the textbook editions
- [LaTeX](https://www.latex-project.org/) (via Pandoc) typesets and renders the PDF edition
- [Make](https://www.gnu.org/software/make/) simplifies the production settings and processes

The online workflow provides a GitHub repository that is preconfigured to run all of the required software. The Desktop workflow includes guidance on installing and using Pandoc, LaTeX, and Make to produce the output files on your computer.

| Requirements    | Online 	| Desktop |
|-----------------|---------|---------|
| Text Editor     | Yes    	| Yes     |
| Word Processor  | Yes    	| Yes     |
| GitHub Account  | Yes    	| No      |
| Pandoc          | No     	| Yes     |
| LaTeX           | No     	| Yes     |
| Make            | No      | Yes     |

::: summary :::

**Word Processing Formats**

Both workflows require manuscript files to be formatted as Markdown (`.md`) files. Markdown is the syntax and format we'll use for tagging structural elements within the textbook chapters. Lantern provides a process to help with converting from common word processing formats (`.docx`, `.odt`, or `.rtf`) to Markdown. The conversions won't be perfect, but they'll save you a lot of time.

If you're starting with Microsoft Word files, you'll need the ability to open the files and apply styles to chapter contents, such as headings. We recommend [Microsoft Word](https://www.microsoft.com/en-us/microsoft-365/word?rtc=1) as your word processor, but [Libre Office](https://www.libreoffice.org/) or [Google Docs](https://www.google.com/docs/about/) will also work. 

:::

## Markdown: Adding Structure to Documents

> The idea is to identify logical structures in your document (a title, sections, subsections, footnotes, etc.), mark them with some unobtrusive characters, and then “compile” the resulting text with a typesetting interpreter which will format the document consistently, according to a specified style. [@tenen_sustainable_2014]

You can create and edit Markdown files using a text editor. Every operating system includes a default plain text editor. On Windows, the default editor is [Notepad](https://www.microsoft.com/en-us/p/windows-notepad/9msmlrh6lzf3?activetab=pivot:overviewtab); on macOS, the default editor is [TextEdit](https://support.apple.com/guide/textedit/welcome/mac). Both of these options will work, as well as any other text editor, but we recommend installing [Visual Studio Code (VS Code)](https://code.visualstudio.com/), which is free for Windows, macOS, and Linux.

::: summary 

Online workflow users can skip ahead to the tutorial. The following describes the software that Lantern uses for the Desktop workflow.

:::

## Pandoc: Building Textbook Editions

[Pandoc](https://pandoc.org/) is the primary document processing software that Lantern uses to convert manuscript files into textbook editions. Pandoc was designed to be a "universal document converter" that works between markup formats. 

Pandoc is strictly a command line tool, but if you're using the **online** production workflow, you won't need to install or interact with Pandoc directly. Instead, everything will be pre-configured in the GitHub template repository for using Pandoc with [GitHub Actions](https://github.com/features/actions) on the fly.

## GNU Make: Automating the Build

Section on Make and how Lantern uses it. 