# Chapter Content in Markdown

::: box :::

This section covers basic explanations of chapter elements within textbooks. There are many additional useful guides you can find online.

-   [Markdown tutorial](https://www.markdowntutorial.com/)

-   [Markdown guide](https://www.markdownguide.org/basic-syntax/)

Materials on this page were adapted from ["Markdown Basics"](https://quire.netlify.app/documentation/fundamentals/) by Quire, licensed under [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/).

:::

## Headings

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

## Paragraphs

Individual paragraphs are created with double line breaks.

HTML:

This is the first paragraph.

This is the second.

```
This is the first paragraph.

This is the second.
```

## Italics and Bold Emphasis

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