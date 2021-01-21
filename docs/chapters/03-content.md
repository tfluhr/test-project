# Content

Doctic uses plain text formats for precise and flexible semantic formatting and data storage. This chapter discusses how to format and store the metadata and content for open textbooks in plain text. 

## Most remediation required is the headings, so fix the headings in word

## Metadata

The bibiliographic metadata for the open textbook is contained within the `metadata.yml` file. This file is written in [YAML](https://en.wikipedia.org/wiki/YAML), a syntax for storing [key-value pairs](https://en.wikipedia.org/wiki/Attribute%E2%80%93value_pair). For example, a key in the metadata example below would be `title` and value would be `Doctic`. YAML keys and values are separated by a colon (`:`). Keys with multiple values, like `author`, need to be started on a new line with indentation and preceeded with a hyphen (`-`). For some metadata keys, a paragraph or more of text might be warranted, like a `description`. In this case, the key is followed by a colon (`:`), a space, and a pipe (`|`). The text for the value starts on a new line that is indented. 

### Example

```yaml

title: Doctic
subtitle: A Minimal Computing Methodology for Open Textbooks
author: 
  - Chris Diaz
  - Lauren McKeen McDonald
copyright: 
  - Chris Diaz
  - Lauren McKeen McDonald
license: Creative Commons Attribution (CC BY) 4.0 International
publisher: Northwestern University Libraries
date: 2020-12-10
contributor:
  - Sherry Wang
lang: en-US
description: |
  Doctic is a digital publishing toolkit for open textbooks. No experience with programming or coding is necessary. Doctic provides instructional guides and re-usable document templates needed for making open textbooks with free and open source software. With Doctic, we hope to minimize the technical maintenance costs of building, distributing, and preserving open textbooks. 
subjects: 
  - OER
  - Digital Publishing
  - Open Textbooks
  - Pandoc
mainfont: DejaVu Sans

# Filter preferences:
# - pandoc-crossref
linkReferences: true

```

### Tips for Writing YAML

YAML is a strict syntax that requires validation as part of the process for making the textbook's output files. There are some cases where the build will fail due to a YAML validation error. There are a lot of helpful online formatting and linting tools for YAML (such as [this YAML formatter](https://jsonformatter.org/yaml-formatter)) that can help fix non-obvious errors with your metadata. 

## Manuscripts

This toolkit explains how to prepare textbook manuscript files for HTML and PDF production. OER authors produce manuscript files in many formats. For example, an original manuscript is likely to be written in a `.docx` format from Microsoft Word; whereas, and adapted manuscript may include published material in `.epub` or `.html` formats. For best results, we recommend starting with `.docx`, `.epub` or `.html` manuscript files. Text processing software, including Microsoft Word, Scrivener, and Google Docs, all allow you to export documents to `.docx` files. Google Docs also supports exporting to `.html` and `.epub`. The quickest way to convert manuscript files to markdown is to use [Pandoc](https://pandoc.org/), a free and open source document converter we can run from the command-line.

### Converting Microsoft Word Files