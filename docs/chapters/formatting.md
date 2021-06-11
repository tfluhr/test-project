# Plain Text Formatting

You can create and edit plain text files using a text editor. Every operating system includes a default plain text editor. On Windows, the default editor is [Notepad](https://www.microsoft.com/en-us/p/windows-notepad/9msmlrh6lzf3?activetab=pivot:overviewtab); on macOS, the default editor is [TextEdit](https://support.apple.com/guide/textedit/welcome/mac). Both of these options will work, as well as GitHub's online text editor, but we recommend installing [Visual Studio Code (VS Code)](https://code.visualstudio.com/), which is free for Windows, macOS, and Linux. 

::: box :::

[VS Code](https://code.visualstudio.com/) can be customized to your workflow with [Extensions](https://marketplace.visualstudio.com/). You might be interested in trying a few extensions to help with formatting Markdown documents. Here are a few popular options:

- [VS Code Icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons): Nice set of icons to help distinguish between file types and folders
- [Markdown+Math](https://marketplace.visualstudio.com/items?itemName=goessner.mdmath): Preview LaTeX math equation rendering
- [Markdown Table Prettifier](https://marketplace.visualstudio.com/items?itemName=darkriszty.markdown-table-prettify): Auto-format markdown tables for easier readability
- [Excel to Markdown Table](https://marketplace.visualstudio.com/items?itemName=csholmq.excel-to-markdown-table): Copy tables from [Microsoft Excel](https://www.microsoft.com/en-us/microsoft-365/excel) and paste as Markdown tables

:::

## Textbook Information in YAML

::: box :::

**Learning Objectives**

Textbooks need bibliographic metadata in order to be indexed by search engines and library catalogs. Lantern stores metadata about the textbook in a YAML file. YAML is a data serialization language, like [JSON](https://en.wikipedia.org/wiki/JSON) or [XML](https://en.wikipedia.org/wiki/XML), often used as a format for configuration settings. 

In this chapter you will learn all you need to know to use YAML for the purposes of creating open textbooks with Lantern. If you want to know more about YAML's capabilities in contexts beyond Lantern you can watch this [video](https://www.youtube.com/watch?v=2JE66WFpaII&feature=emb_imp_woyt) or visit this [tutorial](https://www.tutorialspoint.com/yaml/index.htm).

:::

## YAML within Lantern

The information stored in the YAML file will be used to fill the templates for each of the publication formats (e.g. HTML, PDF, etc.). You need to edit a `metadata.yml` file to store the textbook's title, authors, contributors, and license, and other information. For example, in the case of [*Lantern: Minimal Computing Workflows for Publishing Open Textbooks*](http://lantern.northwestern.pub), the `metadata.yml` file stores all the data necessary to display this information (and more):

- Title
- Subtitle
- Authors
- Description
- Keywords
- Contributors
- Copyright
- License

### Metadata as Key-Value Pairs

YAML's syntax is organized in key-value pairs: 

- the **key** defines the metadata field used by the output templates
- the **value** captures the information about your project

The key must **always** be followed by a colon and a space. There are a number of rules that help with writing valid YAML, such as rules for indentations and spaces. Here are a few: 

- YAML keys should use all lowercase letters
- If the name of the key involves more than one word, the words should be separated by hyphens (i.e. with kebab-case, such as `reference-section-title`)
- Two key value-pairs **cannot** be in the same line. 
- If a key holds multiple values, each value must appear in a new line, intended, and preceded by a dash and a space. 

### Single Value Fields

::: box :::

Examples of single value metadata fields: `title`, `subtitle`, `doi`.

:::

A single-value field is structured like this:

```
key: value
```

For example, the title for a textbook called "Theories of Relativity" would be expressed like this in a YAML file:

```yaml
title: Theories of Relativity
```

The key begins a new line in the YAML file and is separated by the value with a colon (`:`) and a space. The value can be a string, [with or without quotations](https://www.yaml.info/learn/quote.html) (quotations can be usefule for capturing literal strings, especially if the string of text includes an apostrophe or other special character). YAML technically can store data types other than strings, but Lantern is mostly concerned with strings of text. 

### Multiple Value Fields

::: box :::

Examples of multiple Value Fields: `author`, `keywords`, `subjects`.

:::

Some metadata fields have more than one value. The metadata field for `keywords`, for example, can have multiple values:

```yaml
keywords:
    - textbooks
    - oer
    - digital publishing
```

Each value for `keywords` is identified as a list item. The list item needs to be on a new line, indented, and begin a hyphen symbol (`-`) followed by a space. Some of Lantern's multiple value fields include more secificity. For example, an `author` can have a `name` and an `affiliation`. Here's how Lantern expresses mutliple authors in YAML:

```yaml
author:
    -   name: Chris Diaz
        affiliation: Northwestern University
    -   name: Lauren McKeen McDonald
        affiliation: Northwestern University
```

Again, each item in the `author` list is distringuished by the hyphen (`-`). 

### Special Characters and Paragraphs

::: box :::

Examples of single value metadata fields: `description` and `disclaimer`.

:::

Some characters (like colons, apostrophes, asterisks, or quotations) can cause issues with YAML validation. You might want to use these characters for your titles, subtitles, and description values.

Consider the following titles:

-   QUEER HAPPINESS AND SUPPORT: Examining Happiness in LGBTQ+ People and its Relationship with Worsened Parental Relationships After Coming Out (2021)

-   Entering the "Real World": An Empirical Investigation of College Graduates' Satisfaction with Life (2010)

-   J.D Salinger's novel *The Catcher in the Rye* and the presentation of the crisis of adolescence

These examples contain especial characters, specifically quotations, colons and plus signs. The easiest way of avoiding issues with special characters is by using YAML's [literal block](https://learnxinyminutes.com/docs/yaml/) syntax. This syntax uses a pipe character and a new indented block of text to capture a the text with special characters:

```yaml
literal-block: |
    This entire "block of text" will be the value of the 'literal-block' key,
    with line breaks being preserved+

    The literal continues until de-dented, and the leading indentation is
    stripped:

        Any lines that are 'more-indented' keep the rest of their indentation -
        these lines will be indented by 4 spaces.
```

Literal blocks are also useful for writing values of metadata fields that involve entire paragraphs, such as the abstracts. 

### YAML Validation

Lantern scripts will produce errors if your `metadata.yml` file is not using valid syntax. This is a common error that you shouldn't worry about if you encounter it (you almost certainly will!). Because pretty much everyone struggles with this, the internet offers countless online YAML valdation tools ([like this one](https://jsonformatter.org/yaml-formatter)) that you can use to help figure out where your syntax might be off. 

## Chapter Content in Markdown


You can use a word processor to prepare and format documents before they're converted to Markdown files, but you will need to learn some basic Markdown syntax in order to clean up your conversions and create more complex elements within your textbook, such as call-out boxes, tables, and math equations.

Writing in Markdown should be thought of as giving your content structure, not style. You use Markdown to headings, links, lists, footnotes, etc. Special characters like en- and em-dashes, and diacritics work fine in Markdown and in Lantern. 

Lantern provides guidance and tools to simplify the conversion process from common word processing formats (`.docx` or `.odt`) to Markdown. The conversions won't be perfect, but they'll save you a lot of time and make your documents more accessible. Since Lantern uses Pandoc as it's Markdown processor, we'll be using [Pandoc's Markdown](https://pandoc.org/MANUAL.html#pandocs-markdown) to format our textbooks.

### Paragraphs

Individual paragraphs are created with double line breaks.

HTML:

This is the first paragraph.

This is the second.

```
This is the first paragraph.

This is the second.
```

### Headings

Headings are created with hashtags. The number of hashtags corresponds to the level of the heading you want.

```
### Heading 3

#### Heading 4

##### Heading 5 
```

### Heading 3 {.unlisted .unnumbered}

#### Heading 4 {.unlisted .unnumbered}

##### Heading 5 {.unlisted .unnumbered}

Start your section headings with Heading 2 tags (`##`) rather than Heading 1 (`#`). Heading 1 should be reserved for the chapter title. Think of your headings as content outlines, not as visual representations of hierarchy based on font size.

### Italics and Bold Emphasis

Italics and bold are created with asterisks (`*`): single asterisks for italics and double asterisks for bold. Italics can also be created with underscores (`_`). Three asterisks are for bold and italics text.

```
*Italic Text* or _Italic Text_

**Bold Text**

***Bold and italics text***
```

*Italic Text* or _Italic Text_

**Bold Text**

***Bold and italics text***

## Underline

Underline text by surrounding the word with an underscore.

\_underline\_

## Strikethrough

Strikethrough text with tilde marks

\~Strikethough\~

## Blockquotes

Blockquotes (indented blocks of text) are created with the right caret, or greater-than sign.

\> Blockquote

*Blockquote*

## Links

Links are created with text in brackets followed immediately by a url in parentheses.

\[Link Text\](http://www.linkadress.com)

[[Link Text]{.ul}](http://www.linkadress.com/)

## Lists

Dashes and numbers create lists. Indenting creates nested lists.

\- dashes

\- make

\- a list

\- with

\- bullets

-   dashes

-   make

    -   a list

    -   with

    -   bullets

1\. numbers make

2\. a list with

3\. numbers

1.  numbers make

2.  a list with

3.  numbers

## Footnotes

Precede footnote numbers with an up-arrow accent (\^) and then surround it in square brackets. Footnote number one would be \[\^1\], number two would be \[\^2\], and so on.

At the end of the page, usually under a "Notes" heading, add the corresponding note with the same marker followed by a colon and the note text.

\#\# Notes

\[\^1\]: The footnote itself is the same thing as the footnote

number reference in the text, but with a colon followed by

the footnote text

Footnotes can also include Markdown formatting, including lists and even multiple paragraphs. For these, indent the content inwards two levels and put a line space in between the paragraphs just as you would elsewhere.

## Tables

Tables need to be finalized *before* they are formatted in Markdown. It is recommended to use a [Markdown table generator](https://www.tablesgenerator.com/markdown_tables), rather than formatting tables in Markdown by hand. Some Markdown table generators will allow you to [import tables created in Excel or CSV formats](https://jakebathman.github.io/Markdown-Table-Generator/).

## Code blocks

Start with three backticks, enter your content, then close with three backticks.

```

```
print("Hello, world!")
```

```

Inline code can be formatted with single backticks:

```
This line of text includes some HTML `<title>Title</title>` code.
```

### Math equations

Lantern uses LaTeX to generate PDFs and MathJax to render mathematical equations in web browsers. Both of these processing engines use dollar signs for tagging mathematical notation:

Inline math uses single dollar signs:

```t
When $a \ne 0$, there are two solutions to \(ax^2 + bx + c = 0\) and
```

Display math uses double dollar signs, separated by new lines:

```t
$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$
```

### Callout Boxes

Lantern includes some special markdown formatting options for creating callout boxes. This can be useful for learning objectives or side comments to help identify key points or extra resources. 

```
::: box :::

Markdown content within the box! Such as:

**A List:**

- list item
- list item
- list item

:::
```

::: box :::

**Additional resources:** If you want to create something that isn't listed here, there are many useful guides you can find online.

-   [Markdown tutorial](https://www.markdowntutorial.com/)

-   [Markdown guide](https://www.markdownguide.org/basic-syntax/)

Materials on this page were adapted from ["Markdown Basics"](https://quire.netlify.app/documentation/fundamentals/) by Quire, licensed under [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/).

:::