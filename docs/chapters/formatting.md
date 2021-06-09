# Document Formatting

## Microsoft Word Styles

_Coming soon..._

## Textbook Information in YAML

_Coming soon.._

## Chapter Content in Markdown

::: box :::

### Markdown Tutorial

This video explains the basics of Markdown syntax. While it is true that Markdown was designed as a simplified alternative to writing content for HTML, Lantern uses Markdown to write several additional output formats.  

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/2JE66WFpaII" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

One downside to Markdown is that is it not a markup language that has been standardized. There are a few specifications that aim to standardize Markdown, but generally the Markdown syntax rules are set by the Markdown processor, or engine. Since Lantern uses Pandoc as it's Markdown processor, we'll be using [Pandoc's Markdown](https://pandoc.org/MANUAL.html#pandocs-markdown) to format our textbooks.

:::

Lantern provides guidance and tools to simplify the conversion process from common word processing formats (`.docx`, `.odt`, or `.rtf`) to Markdown. The conversions won't be perfect, but they'll save you a lot of time.

If you're starting with Microsoft Word files, you'll need the ability to open the files and apply styles to chapter contents, such as headings. We recommend [Microsoft Word](https://www.microsoft.com/en-us/microsoft-365/word?rtc=1) as your word processor, but [Libre Office](https://www.libreoffice.org/) or [Google Docs](https://www.google.com/docs/about/) will also work. 

## Markdown: Adding Structure to Documents

You can create and edit Markdown files using a text editor. Every operating system includes a default plain text editor. On Windows, the default editor is [Notepad](https://www.microsoft.com/en-us/p/windows-notepad/9msmlrh6lzf3?activetab=pivot:overviewtab); on macOS, the default editor is [TextEdit](https://support.apple.com/guide/textedit/welcome/mac). Both of these options will work, as well as any other text editor, but we recommend installing [Visual Studio Code (VS Code)](https://code.visualstudio.com/), which is free for Windows, macOS, and Linux.

::: box :::

[VS Code](https://code.visualstudio.com/) can be customized to your workflow with [Extensions](https://marketplace.visualstudio.com/). You might be interested in trying a few extensions to help with formatting Markdown documents. Here are a few popular options:

- [VS Code Icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons): Nice set of icons to help distinguish between file types and folders
- [Markdown+Math](https://marketplace.visualstudio.com/items?itemName=goessner.mdmath): Preview LaTeX math equation rendering
- [Markdown Table Prettifier](https://marketplace.visualstudio.com/items?itemName=darkriszty.markdown-table-prettify): Auto-format markdown tables for easier readability
- [Excel to Markdown Table](https://marketplace.visualstudio.com/items?itemName=csholmq.excel-to-markdown-table): Copy tables from [Microsoft Excel](https://www.microsoft.com/en-us/microsoft-365/excel) and paste as Markdown tables

:::

### Bibliographic Citations

Lantern supports the automatic generation of citations and bibliographies. Citations are rendered using the [Citation Style Language](https://docs.citationstyles.org/en/stable/specification.html) specification. By default, Lantern uses the [Chicago Manual of Style](https://chicagomanualofstyle.org/) author-date format. 

**Requirements**

- Textbook chapters containing in-text citations
- A bibliographic data file

### In-text Citations

Within the markdown chapter files (`/chapters/`), citations go inside square brackets and are separated by semicolons. Each citation must have a unique identifier that is composed of `@` + the citation identifier from the bibliographic data file. The citation key must begin with a letter, digit, or `_`, and may contain alphanumerics, `_`, and internal punctuation characters (`:.#$%&-+?<>~/`). Here are some examples:

```
Blah blah [see @doe99, pp. 33-35; also @smith04, chap. 1].

Blah blah [@doe99, pp. 33-35, 38-39 and *passim*].

Blah blah [@smith04; @doe99].
```

For more information about in-text citation formatting, see [Pandoc's citation syntax documentation](https://pandoc.org/MANUAL.html#extension-citations). 

### Bibliographic Data Files

We recommend storing bibliographic references in separate files stored in the root of your project's directory. Lantern provides `references.bib` for you to add your textbook's bibliographic data. You can add to this file manually or supply your own file. A bibliography may have any of these machine-readable formats:

| Format | File extension |
|-|-|
| BibLaTeX | `.bib` |
| BibTeX | `.bibtex` |
| CSL JSON | `.json` |
| CSL YAML | `.yaml` |

#### Creating Your Bibiliography

The easiest way to format a citation for machine-readability is to search for the item in [Google Scholar](https://scholar.google.com/), click on the citation button, then select the `BibTeX` option. This will render the `BibTeX` citation in your web browser for you to copy and paste into `references.bibtex` file. 

Here's an example of a `BibTeX` citation:

```
@article{krewinkel2017formatting,
  title={Formatting Open Science: agilely creating multiple document formats for academic manuscripts with Pandoc Scholar},
  author={Krewinkel, Albert and Winkler, Robert},
  journal={PeerJ computer science},
  volume={3},
  pages={e112},
  year={2017},
  publisher={PeerJ Inc.}
}
```

Most reference management software will let you export your bibliographies as a file in one or more of these formats. We recommend either the `.bib` or `.bibtex` formats for best results. After your export the file, you can either copy and paste the text to the `references.bibtex` file, or add the file itself to your project directory. 

If the bibliography you use has a different file name than `references.bib`, you'll need to edit the `Makefile` entry for `BIBLIOGRAPHY` to point to your new bibiliography file. For example, if I wanted to use a bibiliography file called `textbook.yaml`, I would edit the `Makefile` to specify: `BIBLIOGRAPHY = textbook.yaml`. 