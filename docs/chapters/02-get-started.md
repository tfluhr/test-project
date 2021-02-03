## Get Started

::: summary :::

**TL;DR**

- Install a text editor. We recommend [VS Code](https://code.visualstudio.com/) for beginners. 
- Install a word processor. We recommend [Microsoft Word](https://en.wikipedia.org/wiki/Microsoft_Word).
- Create a [GitHub](https://github.com) account.

:::

Lantern uses [Markdown](https://en.wikipedia.org/wiki/Markdown) for content formatting and [YAML](https://en.wikipedia.org/wiki/YAML) for textbook metadata. Both Markdown and YAML were designed to be human-readable and writable. You'll need a text editor to write and edit both Markdown and YAML.

### Software Requirements

Every operating system includes a default plain text editor. On Windows, the default editor is [Notepad](https://www.microsoft.com/en-us/p/windows-notepad/9msmlrh6lzf3?activetab=pivot:overviewtab); on macOS, the default editor is [TextEdit](https://support.apple.com/guide/textedit/welcome/mac). Both of these options will work, as well as any other text editor, but we recommend installing [Visual Studio Code (VS Code)](https://code.visualstudio.com/) by Microsoft (available for Windows, macOS, and Linux).

[Microsoft Word (MS Word)](https://en.wikipedia.org/wiki/Microsoft_Word) documents (`.docx`) are a ubiquitous file format for authors and editors. It's very likely that you'll work with OER manuscripts in MS word format, so you'll need a way to open and edit them. MS Word makes it very easy to write and edit documents, but digital production requires documents to have a semantic structure in order to tag and render headings, paragraphs, links, and references accurately. We recommend [Microsoft Word](https://www.microsoft.com/en-us/microsoft-365/word?rtc=1) as a word processor, but [Libre Office](https://www.libreoffice.org/) or [Google Docs](https://www.google.com/docs/about/) will also work.

### Production Workflows

Lantern teaches two workflows for making and publishing open textbooks: **online** and **desktop**. The online workflow is the simpler option, but it depends on GitHub for processing. The Desktop workflow is more complicated, but removes GitHub as a dependency. Both workflows use GitHub as a web hosting service, but you are free to use any other web hosting service. 

Lantern uses a few open source software packages to build the web, PDF, and DOCX outputs:

- [Pandoc](https://pandoc.org/) transforms the Markdown and YAML source files into web, LaTeX, and DOCX editions
- [LaTeX](https://www.latex-project.org/) typesets and builds the PDF edition
- [Make](https://www.gnu.org/software/make/) simplifies the build processes

The online workflow provides a GitHub repository that is preconfigured to run the required software for building the web, PDF, and DOCX editions. We recommend the online workflow to first-time users of Lantern and the Desktop workflow to advanced users looking for more customizations.

Beyond a text editor and a word processor, the setup requirements for each workflow will depend on your willingness to sign up for free web services or download and install software. 

| Requirements   	| Online 	| Desktop 	|
|----------------	|--------	|---------	|
| Text Editor    	| Yes    	| Yes     	|
| Word Processor 	| Yes    	| Yes     	|
| GitHub Account 	| Yes    	| No      	|
| Pandoc         	| No     	| Yes     	|
| LaTeX          	| No     	| Yes     	|
| Make              | No        | Yes       |

