# Desktop Publishing with Pandoc and GitHub

## Computer Terminal

Every operating system comes with a terminal program pre-installed. Computer terminals give you direct access to files, folders, and programs on your machine without the help of a graphical user interface. Windows machines include two computer terminal programs: [Command Prompt](https://en.wikipedia.org/wiki/Cmd.exe) and [PowerShell](https://en.wikipedia.org/wiki/PowerShell). macOS and (many Linux distributions) include a program simply called: [Terminal](https://en.wikipedia.org/wiki/Terminal_(macOS)).

The your default terminal is automatically detected and integrated with VS Code upon installation. From within VS Code, there are several ways to open your terminal. From the title bar:

- Click on `View` > `Terminal` or
- Click on `Terminal` > `New Terminal`

See [VS Code documentation](https://code.visualstudio.com/docs/editor/integrated-terminal) for more information on terminal options and configurations. 

## Using Pandoc 

Pandoc can be [installed on most operating systems](https://pandoc.org/installing.html). Review the [getting started](https://pandoc.org/getting-started.html) directions to familarize yourself with your terminal (or command-prompt). You'll need your terminal to be open to the folder that contains your manuscript files. 

Here's the basic syntax for a Pandoc command:

```
pandoc --standalone <input file> --from <input format> --to <output format> -o <output file>
```

Example Pandoc command:

```
pandoc textbook.docx --from docx --to markdown -o textbook.md
```

Pandoc allows you a lot of flexibility to construct your commands using a variety of options. Here are the most useful Pandoc options for converting OER textbook content to markdown:

- `-s` or `--standalone`: Create a single document, rather than a document fragment.
- `-f` or `--from`: Specifies the original document's markup format.
- `-t` or `--to`: Specifies the new document's markup format.
- `-o`: Specifies the new document's file name and extension.
- `--atx-headers`: Formats the markdown headings to the popular ATX-style.
- `--wrap=none`: Pandoc, by default, wraps text at a specific width. This setting disables that behavior.
- `--extract-media=images`: Tells Pandoc to copy embedded images from the input document to an `images` folder.
- `--mathjax`: For HTML output, this option adds [MathJax](https://www.mathjax.org/)
- `--css <styles.css>`: For HTML output, this option adds a link to a stylesheet you specify

Here's an example Pandoc command with options:

```
pandoc textbook.docx --from docx --to markdown --atx-headers --extract-media=images -o textbook.md
```

The accuracy of the conversion depends upon the structure of the input document. While Pandoc can handle the vast majority of the conversion, there is almost always a need for someone to check the output documents for errors and to make corrections to the Mardown formatting accordingly. 

## Microsoft Word Documents

Pandoc command:

```
pandoc -s <FILE>.docx -f docx -t markdown --atx-header --wrap=none --extract-media=images -o <FILE>.md
```

Notes:

- The `--atx-header` option only works if the source `.docx` file uses Heading 1, Heading 2, and Heading 3 [Microsoft Word style](https://support.microsoft.com/en-us/office/apply-styles-f8b96097-4d25-4fac-8200-6139c8093109).


## Adapting and Remixing Open Content

### OER Source Files


### Basic Typesetting with Markdown and LaTeX

We use [Markdown](https://en.wikipedia.org/wiki/Markdown) syntax for typesetting and formatting basic textbook components. Markdown is a non-proprietary, plain text markup language for text documents. Markdown files usually have a `.md` file extension, but sometimes they will have `.markdown` or `.txt` extension. We're using it for common page elements, including:

- Headings
- Paragraphs
- Links
- References
- Quotes
- Footnotes
- Emphasis
- Tables
- Images
- `Code`

Mathematical equations, formulas, theorems can be formatted using [LaTeX](https://www.latex-project.org/)/[TeX](https://en.wikipedia.org/wiki/TeX) syntax **within** the Markdown documents. Math can be rendered in-line (i.e. within a paragraph) or displayed as a block (i.e. between two paragraphs). From the [Pandoc manual](https://pandoc.org/MANUAL.html):

> Anything between two `$` characters will be treated as TeX math. The opening `$` must have a non-space character immediately to its right, while the closing `$` must have a non-space character immediately to its left, and must not be followed immediately by a digit. Thus, `$20,000` and `$30,000` won’t parse as math. If for some reason you need to enclose text in literal `$` characters, backslash-escape them (e.g. `$\`) and they won’t be treated as math delimiters. For display math, use `$$` delimiters. (In this case, the delimiters may be separated from the formula by whitespace.) TeX math will be printed in all output formats. 

The Pandoc templates provided by Doctic are not intended to support the full range of [LaTeX](https://www.latex-project.org/) typesetting capabilities. Doctic works best when the majority of the content can be expressed using Markdown, preserving LaTeX/TeX *only* for the mathematics.  