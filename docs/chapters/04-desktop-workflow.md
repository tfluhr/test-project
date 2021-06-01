# Desktop Workflow Tutorial

The desktop workflow brings all of the required processing software to your computer. It's designed to remove [GitHub](https://github.com) as a dependency so that you can use any web hosting platform for publishing your open textbooks. In this tutorial, we'll walk you through the process of setting up your computer and running basic Lantern commands. 

## Prerequisites

You'll need a Windows, macOS, or Linux computer with the ability to install open source software packages. For example, on a Windows computer, you'll need the ability to login as an administrator to install certain programs and enable new features. 

::: aside :::

Lantern depends on [GNU Bash](https://www.gnu.org/software/bash/) and [GNU Make](https://www.gnu.org/software/make/). These programs work fine on macOS and Linux computers, but they require some extra programs in order to run on Windows computers. We recommend the [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about) for which we provide some guidance below.   

:::

## Installation

### macOS and Linux

#### Install Homebrew

Both macOS and Linux can use the [Homebrew](brew.sh) to install all of the required software you need. Homebrew is a software package manager that simplifies the process for installing, uninstalling, and upgrading software from the command line. Visit [https://brew.sh/](https://brew.sh/) for instructions on installing Homebrew. 

#### Install Pandoc

We can use Homebrew to install [Pandoc](https://pandoc.org) and [Pandoc Crossref](https://github.com/lierdakil/pandoc-crossref). 

Pandoc is our main document converter. We use Pandoc to convert manuscript files from Word processing formats to Markdown, then Markdown to our publishing output formats (e.g. HTML, LaTeX, DOCX, etc.). Pandoc Crossref is a filter that helps us label and number equations, figures, and images in order to produce links within our textbook projects. 

We can install both of these with Homebrew by executing the following command: 

```sh
brew install pandoc pandoc-crossref
```

#### Install LaTeX

_You can skip this section if you already have LaTeX installed on your system._

Lantern uses [$LaTeX$](https://www.latex-project.org/) to make PDFs. $Latex$ is a document production system that is commonly used for formatting mathematical notation and advanced typesetting. 

Lantern uses a minimal LaTeX distribution called [BasicTeX](https://yihui.org/tinytex/). You can install BasciTeX with Homebrew using this command:

```sh
brew install --cask basictex
```

### Windows

Lantern depends on two programs that require a [Unix-like](https://en.wikipedia.org/wiki/Unix-like) operating system. Since Windows does not behave like a Unix system, we'll need to install one before working with Lantern. 

Luckily, recent versions of Windows 10 support the [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about), which allows you to install and run a full [Linux distribution](https://en.wikipedia.org/wiki/Linux_distribution) within your normal Windows environment. 

Follow the instructions provided by Microsoft in order to install WSL 2 on your machine. [You can find those instructions here](https://docs.microsoft.com/en-us/windows/wsl/install-win10) and some tips to help you with the process. 

**Recommendation: Install the latest stable release of Ubuntu when selecting a Linux Distribution. At the time of this writing, the [latest Ubuntu version is 20.04 LTS](https://www.microsoft.com/en-us/p/ubuntu-2004-lts/9n6svws3rx71?rtc=1&activetab=pivot:overviewtab).** 

_Add an estimate for the time it takes to install and setup WSL on Windows 10._

#### Tips on the Manual Installation Process of WSL 2

**Running PowerShell as an Administrator**
_Installing WSL 2 on your computer requires you to copy and paste a few commands into PowerShell, a command-line interface for Windows computers. Some of these commands require you to run them **as Administrator**. Here's how to do that:_

- Hit the Windows Key
- Type "PowerShell"
- Select "Run as Administrator"
- Login with an Administrator username and password

**Checking Your System Type**
_Most Windows computers have either x64 or ARM64 systems. If you're not sure which one you're using, follow these steps:_

- Hit the Windows Key
- Type "PowerShell"
- Press Enter
- Type in the prompt: `systeminfo | find "System Type"`
- Press Enter

_You should see a message that says something like: ` x64-based PC`_. 

**Checking Your Windows 10 Version**
_There are several **versions** and **builds** of Windows 10. If you're not sure which version and build you have, follow these steps:_

- Hit the Windows Key
- Hit the "R" key
- Press Enter
- Type "winver"
- Press Enter

_The pop-up message will include both version and build numbers for your Windows 10 software._