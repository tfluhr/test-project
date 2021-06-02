# Desktop Workflow

The desktop workflow brings all of the required processing software to your computer. It's designed to remove [GitHub](https://github.com) as a dependency so that you can use any web hosting platform for publishing your open textbooks. In this tutorial, we'll walk you through the process of setting up your computer and running basic Lantern commands. 

**Prerequisites**

You'll need a Windows, macOS, or Linux computer with the ability to install open source software packages. For example, on a Windows computer, you'll need the ability to login as an administrator to install certain programs and enable new features. 

::: aside :::

Lantern depends on [GNU Bash](https://www.gnu.org/software/bash/) and [GNU Make](https://www.gnu.org/software/make/). These programs work fine on macOS and Linux computers, but they require some extra programs in order to run on Windows computers. We recommend the [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about) for which we provide some guidance below.   

:::

## Setup on macOS or Linux

### Install Homebrew

Both macOS and Linux can use the [Homebrew](brew.sh) to install all of the required software you need. Homebrew is a software package manager that simplifies the process for installing, uninstalling, and upgrading software from the command line. Visit [https://brew.sh/](https://brew.sh/) for instructions on installing Homebrew. 

### Install Pandoc

We can use Homebrew to install [Pandoc](https://pandoc.org) and [Pandoc Crossref](https://github.com/lierdakil/pandoc-crossref). 

Pandoc is our main document converter. We use Pandoc to convert manuscript files from Word processing formats to Markdown, then Markdown to our publishing output formats (e.g. HTML, LaTeX, DOCX, etc.). Pandoc Crossref is a filter that helps us label and number equations, figures, and images in order to produce links within our textbook projects. 

We can install both of these with Homebrew by executing the following command: 

```sh
brew install pandoc pandoc-crossref
```

### Install BasicTeX

_You can skip this section if you already have LaTeX installed on your system._

Lantern uses [$LaTeX$](https://www.latex-project.org/) to make PDFs. $Latex$ is a document production system that is commonly used for formatting mathematical notation and advanced typesetting. 

Lantern uses a minimal LaTeX distribution called [BasicTeX](https://yihui.org/tinytex/). You can install BasciTeX with Homebrew using this command:

```sh
brew install --cask basictex
```

## Setup on Windows

_You can skip this section if you are using macOS or Linux._

Lantern depends on two programs that require a [Unix-like](https://en.wikipedia.org/wiki/Unix-like) operating system. Since Windows does not behave like a Unix system, we'll need to install one before working with Lantern. Luckily, recent versions of Windows 10 support the [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about), which allows you to install and run a full [Linux distribution](https://en.wikipedia.org/wiki/Linux_distribution) within your normal Windows environment. 

Follow the instructions provided by Microsoft in order to install WSL 2 on your machine. [You can find those instructions here](https://docs.microsoft.com/en-us/windows/wsl/install-win10) and additional some tips to help you with the process below. 

**Recommendation: Install the latest stable release of Ubuntu when selecting a Linux Distribution. At the time of this writing, the [latest Ubuntu version is 20.04 LTS](https://www.microsoft.com/en-us/p/ubuntu-2004-lts/9n6svws3rx71?rtc=1&activetab=pivot:overviewtab).** 

_Add an estimate for the time it takes to install and setup WSL on Windows 10._

::: example :::

**Running PowerShell as an Administrator**
_Installing WSL 2 on your computer requires you to copy and paste a few commands into PowerShell, a command-line interface for Windows computers. Some of these commands require you to run them **as Administrator**. Here's how to do that:_

- Hit the Windows Key
- Type "PowerShell"
- Select "Run as Administrator"
- Login with an Administrator username and password

:::

::: example :::

**Checking Your System Type**
_Most Windows computers have either x64 or ARM64 systems. If you're not sure which one you're using, follow these steps:_

- Hit the Windows Key
- Type "PowerShell"
- Press Enter
- Type in the prompt: `systeminfo | find "System Type"`
- Press Enter

_You should see a message that says something like: ` x64-based PC`_. 

::: 

::: example :::

**Checking Your Windows 10 Version**
_There are several **versions** and **builds** of Windows 10. If you're not sure which version and build you have, follow these steps:_

- Hit the Windows Key
- Hit the "R" key
- Press Enter
- Type "winver"
- Press Enter

_The pop-up message will include both version and build numbers for your Windows 10 software._

:::

### Text Editing

There are two main types of documents we use to write and edit text: [plain-text](https://en.wikipedia.org/wiki/Plain_text) and [rich text](https://en.wikipedia.org/wiki/Formatted_text). Plain text exposes the characters within a document, whereas rich text displays the formatting features and styles. 

| File Contents | File Extension          | Editors                    |
| ------------- | ----------------------- | -------------------------- |
|   Plain text  | `.xml`, `.html`, `.md`  | Notepad, TextEdit, VS Code |
|   Rich text   | `.docx`, `.rtf`, `.odt` | Microsoft Word, Scrivener  |

Most of us are trained to use rich text editors: emails, word documents, content management systems (e.g. WordPress). This is for good reason: they're easy to use and we need them for everyday things. For academic publishing purposes, plain text offers some advantages over rich text, as Tenen and Wythoff ([2014](https://doi.org/10.46430/phen0041)) explain: 

> Plain text both ensures transparency and answers the standards of long-term preservation. MS Word may go the way of [Word Perfect](https://en.wikipedia.org/wiki/WordPerfect) in the future, but plain text will always remain easy to read, catalog, mine, and transform. Furthermore, plain text enables easy and powerful versioning of the document, which is useful in collaboration and organizing drafts. Your plain text files will be accessible on cell phones, tablets, or, perhaps, on a low-powered terminal in some remote library. Plain text is backwards compatible and future-proof. Whatever software or hardware comes along next, it will be able to understand your plain text files.

We recommend installing [Visual Studio Code (VS Code)](https://code.visualstudio.com/) as your text editor, but you're welcome to use any other text editor you prefer. Visit the website to [download](https://code.visualstudio.com/) and [install](https://code.visualstudio.com/docs/setup/setup-overview) VS Code. When prompted to "Select Additional Tasks" during installation, be sure to check the Add to PATH option so you can easily open a folder in WSL using the `code` command from your terminal.

::: example :::

**Windows Users**

VS Code can be set up to work with your Windows Subsytem for Linux (WSL) setup. [Follow these instructions](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode#:~:text=Visit%20the%20VS%20Code%20install,WSL%20using%20the%20code%20command.) on configuring youre VS Code editor with your WSL instance. You can skip the Git and Windows Terminal sections as those are optional.  

### Download Lantern

Now that you have all of the required software for the desktop workflow, you're ready to download the Lantern files to your computer. [Lantern](https://github.com/nulib-oer/lantern) is a Git repository hosted on [GitHub](https://github.com). You don't need to know anything about Git or GitHub to download the files. Visit the Lantern git repository on GitHub to download the ZIP file or clone the repository (if you're using Git): [https://github.com/nulib-oer/lantern](https://github.com/nulib-oer/lantern)

::: example :::

- **Windows users:** WSL has it's own file system that you can access from a terminal window. Follow these steps to setup your Lantern projects from the command line:

1 _Open an Ubuntu/Linux Terminal window_

1. _Create a folder to contain your Lantern projects_ 

```sh
mkdir lantern-projects
```

1. _Download the Lantern files from GitHub_

```sh
wget -q -O tmp.zip https://github.com/nulib-oer/lantern/archive/refs/heads/main.zip && unzip tmp.zip && rm tmp.zip
```

1. _Navigate to the new folder containing Lantern files_

```sh
cd lantern-main
```

1. _Open this folder in VS Code_

```sh
code .
```

:::

### Lantern Files and Folders

Lantern comes with a few files and folders you'll be using to add and edit your manuscript content. All of these files and folders are contained in the `source` directory. These are the **only** files and folders you will need to edit to use Lantern for your textbook project.

- `chapters/`: This folder contains the textbook chapter files

- `images/`: This folder contains the textbook images for figures, logos, covers, etc.

- `preprocess/`: If you add `.docx`, `.odt`, or `.tex` files to this folder, Lantern will convert these files to Markdown and add them to the `chapters/` folder with the `make markdown` command (more on this below)

- `metadata.yml`: This file defines the bibliographic metadata for your textbook

- `references.bib`: This file contains the bibliography for your textbook in [BibTex format](http://www.bibtex.org/Format/)

## Metadata

Textbooks need bibliographic metadata in order to be indexed by search engines and library catalogs. Lantern stores metadata about the textbook in a YAML file. The information stored in the YAML file will be used to fill the templates for each of the publication formats. 

::: aside :::

### YAML Primer

YAML is to JSON what Markdown is to HTML. It's a more human-readable (and human-writable) way to express and store data. 

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/cdLNKUoMc6c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

YAML needs to be valid, so if you ever hit an error, it's a good idea to check the YAML code you're using with a [YAML validation tool](https://jsonformatter.org/yaml-validator). 

:::

- Open the `metadata.yml` file to view the available metadata fields.

- Edit the file by replacing the placeholder metadata values with your textbook's information 

- When you're finished with your edits, save the file: Control + S 

## Chapters

The `chapters/` folder includes two sample chapters formatted in Markdown for your reference: `01-introduction.md` and `02-chapter-example.md`. Lantern looks for files in this folder to build out the chapters of the textbook. 

By default, Lantern sets the order of the chapters using the file name. You can set the order of the chapters by adding a numeric prefix to the file name, `00-`, `01-`, `02-`, and so on. Anything after the hyphen (`-`) in the file name can be used for your reference to quickly identify the file. It is a best practice to use all lowercase words separated by hyphens (`-`) in filenames. For example:

1. Preface = `00-preface.md`
1. Chapter One = `01-introduction.md`
1. Chapter Two = `02-chapter-example.md`
1. Chapter Three = `03-probability.md`
1. Chapter Four = `04-binomial-distribution.md`

The title of the chapter as it displays in the final textbook is set by the first line of the chapter file. The first line of each chapter file must begin with one hashtag symbol (`#`) to represent a first-level heading (or `<h1>` if you're familiar with [HTML headings](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)). For example, the chapter file `01-introduction.md` contains the first line: `# Introduction to Vegetable Lasagna`, which renders thusly:

**HTML:**

# Introduction to Vegetable Lasagna

**PDF:**

![](chapter-title.png)

**LaTeX:**

```
\chapter{Introduction to Vegetable Lasagna}
```

### Converting to Markdown

Most OER authors are not writing their manuscripts in Markdown (yet!), so we'll need to convert from more common file formats. The [example chapters](https://drive.google.com/drive/folders/1Fl__DhDXDFyoPmwX0CHpfj10qhOY3t0k?usp=sharing) are Google Docs that can be downloaded as `.docx` or `.odt` files, which are the file types that most word processing software use. 

Lantern has includes a micro-workflow that will help you convert raw manuscript files from `.docx` or `.odt` to Markdown (`.md`).

- Download the example chapter files from the Google Drive, ignoring the README file, which we don't need
- Save the files to your computer.
- In your GitHub repository, click on the "source" folder, then click on the "preprocess" folder. The "preprocess" folder is intended for you to upload `.docx` or `.odt` files.

![Screenshot of the preprocess folder on GitHub](preprocess.png)

- Click on the "Add file" drop-down menu and select "upload files"
- Upload one or more of the `.docx` or `.odt` files
- Click on the "Commit changes" button and (optionally) add a message about the uploads

This action will trigger the GitHub repository to convert your `.docx` or `.odt` chapter files to markdown, then add the markdown files to the `source/chapters/` folder. This folder should now look something like this:

![Screenshot of the chapters folder on GitHub](chapters.png)

You can now edit any of these files using GitHub's online text editor. 

### Editing Chapter Files

The conversion process between word processing formats and markdown won't be perfect, so you may need to spend some time correcting any formatting errors or removing any unnecessary markup. 

- Click on the "03-probability.md" file

![Screenshot of the Probabilities example chapter on GitHub](probability.png)

GitHub will render the raw markdown as formatted HTML (without any styles) in order to give you a preview of how the content will look in its final state.

- Click on the pencil icon labelled "Edit this File" near the right side of the screen

The editor view of the file will allow you to edit the raw markdown contents as well as the file name itself (including the extension). We'll need to edit this file because there's a problem with the title of the chapter. 

![Screenshot of the Editor view for the Probabilities chapter](edit.png)

The title of this particular chapter is not formatted properly. Instead of marking the title as a heading, the title is formatted as `**bold**`. This is a common problem with word processing formats, wherein headings are representing _visually_ but not _semantically_. Markdown uses specific syntax to mark contents as headings.

- Change the `**Probabilities**` heading to a proper markdown heading: `# Probabilities`

All chapter files using Lantern must begin must begin with the title of the chapter formatted as a "Heading 1" or a first-level heading using the hashtag symbol (`#`). The number of hashtags corresponds to the level that heading represents (for example, one hashtag converts to a `<h1>` tag when the output is HTML). There are typically between 1 and 6 heading level options. 

- Now click on the "Preview" tab to see how that syntax change affected the output of the heading

![Screenshot of the HTML preview for the Probabilities chapter](preview.png)

- There is another heading error in the file. Change `**Introduction to Probability Standard**` in line 19 to `## Introduction to Probability Standard` so that it represents a "Heading 2", or section heading.
- Scroll down to the bottom of the page and click on the "Commit changes" button to save these changes to your textbook
