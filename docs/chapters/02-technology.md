## The Technology

::: summary :::

**TL;DR**

Lantern teaches two production workflows that use [Markdown](https://en.wikipedia.org/wiki/Markdown) to format text and [Pandoc](https://pandoc.org/) to create web, PDF, and Microsoft Word editions of open textbooks. 

Specifically, Lantern will help you...

1. Convert manuscripts from Microsoft Word to Markdown
2. Prepare manuscript content in Markdown
3. Produce publishable web, PDF, and Microsoft Word editions

**Lantern assumes no prior experience with writing code.** Lantern provides all of the necessary guides and templates to begin publishing open textbooks with free and open source software.

:::

### Production Workflows

Lantern teaches two methods for making and publishing open textbooks: 

- The **online** workflow is the simpler option, but it depends on GitHub for document processing. Some free software installation is recommended but not required. This workflow does not use the command line.

- The **desktop** workflow is more complicated, but removes GitHub as a dependency. Some free software installation is required. This workflow uses the command line to run scripts that Lantern provides.

Both workflows use [GitHub](https://github.com/) as a web hosting service, but you will be free to use any other web hosting service. **We recommend the online workflow to first-time users of Lantern** and the Desktop workflow to advanced users looking for more customizations.

### Processing Software

Lantern uses a few open source software programs to build the web, PDF, and DOCX outputs, but you won't interact with these programs if you're using the online workflow:

- [Pandoc](https://pandoc.org/) transforms the Markdown source files into web, LaTeX, and DOCX editions
- [LaTeX](https://www.latex-project.org/) (via Pandoc) typesets and renders the PDF edition
- [Make](https://www.gnu.org/software/make/) simplifies the build processes

The online workflow provides a GitHub repository that is preconfigured to run all of the required software for building the web, PDF, and DOCX editions. The Desktop workflow includes guidance on installing and using Pandoc, LaTeX, and Make.

| Requirements   	| Online 	| Desktop 	|
|----------------	|--------	|---------	|
| Text Editor    	| Yes    	| Yes     	|
| Word Processor 	| Yes    	| Yes     	|
| GitHub Account 	| Yes    	| No      	|
| Pandoc         	| No     	| Yes     	|
| LaTeX          	| No     	| Yes     	|
| Make              | No        | Yes       |

::: summary :::

**Microsoft Word**

Both workflows require manuscript files to be in either Markdown (`.md`) or Microsoft Word (`.docx`) formats. If you're starting with Microsoft Word files, you'll need the ability to open and edit the files. We recommend [Microsoft Word](https://www.microsoft.com/en-us/microsoft-365/word?rtc=1) as your word processor, but [Libre Office](https://www.libreoffice.org/) or [Google Docs](https://www.google.com/docs/about/) will also work. Lantern will help you convert the files to Markdown, which will be the syntax we'll use for adding semantic structure to the open textbook.

:::

### Markdown: Adding Structure to Documents

> The idea is to identify logical structures in your document (a title, sections, subsections, footnotes, etc.), mark them with some unobtrusive characters, and then “compile” the resulting text with a typesetting interpreter which will format the document consistently, according to a specified style. _-- Dennis Tenen and Grant Wythoff, "[Sustainable Authorship in Plain Text using Pandoc and Markdown](https://doi.org/10.46430/phen0041)," The Programming Historian 3 (2014)._ 

Markdown provides big benefits to open textbook publishers:

1. Markdown was designed as an "[easy-to-read, easy-to-write](https://daringfireball.net/projects/markdown/)" plain text format
2. Markdown files can be opened on any device with any operating system

> Plain text files have many advantages over other formats. For one, they are readable on virtually all devices. They have also withstood the test of time better than other file types – if you’ve ever tried to open a document saved in a legacy word processor format, you’ll be familiar with the compatibility challenges involved. _-- Sarah Simpkin, "[Getting Started with Markdown](https://doi.org/10.46430/phen0046)," The Programming Historian 4 (2015)._

You can create and edit Markdown files using a text editor. Every operating system includes a default plain text editor. On Windows, the default editor is [Notepad](https://www.microsoft.com/en-us/p/windows-notepad/9msmlrh6lzf3?activetab=pivot:overviewtab); on macOS, the default editor is [TextEdit](https://support.apple.com/guide/textedit/welcome/mac). Both of these options will work, as well as any other text editor, but we recommend installing [Visual Studio Code (VS Code)](https://code.visualstudio.com/), which is free for Windows, macOS, and Linux.

::: objectives :::

Markdown Demonstration in Five Minutes or Less. Until then, there's [this](https://youtu.be/2JE66WFpaII).

:::

### Pandoc: Building Textbook Editions

[Pandoc](https://pandoc.org/) is the primary document processing software that Lantern uses to convert textbook files between formats. It's a command line tool, but if you're using the **online** production workflow, you won't need to install or interact with Pandoc at all; everything will be pre-configured in the GitHub template repository. Lantern teaches you how to prepare manuscripts for Pandoc to properly convert and format the resulting textbook editions. More guiadance and instructions are covered in the Desktop workflow tutorial. 