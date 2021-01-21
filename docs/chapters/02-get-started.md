# Get Started

Doctic uses [Markdown](https://en.wikipedia.org/wiki/Markdown) for content formatting and [YAML](https://en.wikipedia.org/wiki/YAML) for metadata entry. These formats give us the flexibility to build our textbooks in multiple formats. They are also human-readable and software independent, which means we can open and read the source materials on any operating system now or in the future. Markdown and YAML are plain text formats that require a plain text editor.

## Working with Text

Every operating system includes a default plain text editor. On Windows, the default editor is [Notepad](https://www.microsoft.com/en-us/p/windows-notepad/9msmlrh6lzf3?activetab=pivot:overviewtab); on macOS, the default editor is [TextEdit](https://support.apple.com/guide/textedit/welcome/mac). Both of these options will work, as well as any other text editor, but we recommend installing [Visual Studio Code (VS Code)](https://code.visualstudio.com/) by Microsoft (available for Windows, macOS, and Linux).

[Microsoft Word (MS Word)](https://en.wikipedia.org/wiki/Microsoft_Word) documents (`.docx`) are a ubiquitous file format for authors and editors. It's very likely that you'll work with OER manuscripts in MS word format, so you'll need a way to open and edit them. MS Word makes it very easy to write and edit documents, but digital production requires documents to have a semantic structure in order to tag and render headings, paragraphs, links, and references accurately. We recommend [Microsoft Word](https://www.microsoft.com/en-us/microsoft-365/word?rtc=1) as a word processor, but [Libre Office](https://www.libreoffice.org/) or [Google Docs](https://www.google.com/docs/about/).

## Document Processing

Doctic teaches two workflows for making and publishing open textbooks: online and desktop. The online workflow is the simpler options, but it depends on GitHub for document processing. The Desktop workflow is more complicated, but removes GitHub as a dependency by using your computer as a document processor. Both workflows use GitHub as a web hosting service and allow you to us any other web hosting service you choose. Beyond a text editor and a word processor, the setup requirements for each workflow will depend on your willingness to sign up for free web services or download and install software. 

| Requirements   	| Online 	| Desktop 	|
|----------------	|--------	|---------	|
| Text Editor    	| Yes    	| Yes     	|
| Word Processor 	| Yes    	| Yes     	|
| GitHub Account 	| Yes    	| No      	|
| Pandoc         	| No     	| Yes     	|
| LaTeX          	| No     	| Yes     	|
| Make              | No        | Yes       |

The Desktop workflow includes additional recommendations. Windows users are recommended to install the [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/install-win10). Windows (with WSL installed) and macOS users are also recommended the [Homebrew](https://brew.sh/) package manager. Guidance for setting up required and recommended software is provided.