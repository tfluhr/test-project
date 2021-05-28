# Online Workflow Tutorial

The Online Workflow is entirely web-based and uses [GitHub](https://github.com) as a publishing platform. This tutorial will guide you through the process of setting up your textbook project on GitHub. By the end of this tutorial, you will be able to use Lantern to create and publish open textbooks.

## Prerequisites

- Create a [GitHub](https://github.com) account
- Download the [example chapters](https://drive.google.com/drive/folders/1Fl__DhDXDFyoPmwX0CHpfj10qhOY3t0k?usp=sharing) as `.docx` or `.odt` files

## Create Your Online Workspace

Your online workspace will be a repository on GitHub. Your repository will contain all of the source files for your textbook. Lantern provides a template repository that you can copy to your GitHub account.

::: aside :::

A repository is a project folder that uses [Git](https://git-scm.com/) for version control. [GitHub](https://github.com) is a website for hosting Git repositories.

:::

1. Login to [GitHub](https://github.com)

1. Visit [https://github.com/nulib-oer/lantern](https://github.com/nulib-oer/lantern)

1. Click the green "Use This Template" button. This brings you to a "Create a new repository" form. 

![Screenshot of the "Use this Template" button](use-this-template.png)

1. Enter your new repository name for your textbook project. Use a lowercase name without spaces. This name will become part of your site URL. 

![Screenshot of the web form for creating a new repository](new-repository.png)

::: aside :::

_Example: `https://USERNAME.github.io/REPOSITORY-NAME` where `USERNAME` is your GitHub username._

:::

5. Most users should choose "Public" repository. If you are hosting on GitHub Pages it must be public unless you upgrade to a paid account.

1. Leave the "Include all branches" option unchecked; you only want the `main` branch
   
1. Click on the green button "Create repository from template." This will take you to your new repository.

## Repository Files and Folders

Your new repository comes with a few files and folders you'll be using to add and edit your manuscript content. All of these files and folders are contained in the `source` directory. These are the **only** files and folders you will need to edit to use Lantern for your textbook project.

![Screenshot of the "source" folder contents](source-directory.png)

- `chapters/`: This folder contains the textbook chapter files

- `images/`: This folder contains the textbook images for figures, logos, covers, etc.

- `preprocess/`: If you upload `.docx`, `.odt`, or `.tex` files to this folder, Lantern will convert these files to Markdown and add them to the `chapters/` folder

- `metadata.yml`: This file defines the bibliographic metadata for your textbook

- `references.bib`: This file contains the bibliography for your textbook in [BibTex format](http://www.bibtex.org/Format/)

::: exercise :::

### Further Customization

If you'd like to edit the default configurations, styles, production tasks, or templates, you can do so by editing these files:

- `assets/`: This folder contains the files for configurations (`defaults/`), styles (`styles/`), dependencies (`lib/`), scripts (`scripts/`,), and templates (`templates/`) Lantern uses to produce the output formats. 

- `Makefile`: This file defines the core commands Lantern uses to produce your output files.

:::

## Metadata

Textbooks need bibliographic metadata in order to be indexed by search engines and library catalogs. Lantern stores metadata about the textbook in a YAML file. The information stored in the YAML file will be used to fill the templates for each of the publication formats. 

::: aside :::

### YAML Primer

YAML is to JSON what Markdown is to HTML. It's a more human-readable (and human-writable) way to express and store data. 

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/cdLNKUoMc6c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

YAML needs to be valid, so if you ever hit an error, it's a good idea to check the YAML code you're using with a [YAML validation tool](https://jsonformatter.org/yaml-validator). 

:::

- Open the `metadata.yml` file to view the available metadata fields.

![Screenshot of the first few lines of the "metadata.yml" file](metadata.png)

- To edit the file with your textbook's information, click on the pencil icon labelled "Edit this File" near the right side of the screen

![Screenshot of the editing icon](edit-this-file.png)

- Use GitHub's online text editor to replace the placeholder metadata values with your textbook's information 

- When you're finished with your edits, scroll to the bottom of the page to the "Commit changes" form. 

![Screenshot of the commit changes form](commit.png)

::: aside :::

This form will help you create a _commit_ in your repository. A commmit is a snapshot of a repository. Each commit is an opportunity to briefly log the purpose of your changes to the repository, which is helpful for keeping track of the project's development.

:::

- When you're ready to make the commit, you can keep the default setting for committing directly to the `main` branch. 

- Click on the "Commit changes" button.

This action will trigger a few things for your new textbook:

- Your textbook is built as a website as well as several additional output formats: PDF, LaTeX, EPUB, and DOCX
- These files are saved to a new "branch" in your repository called `gh-pages`

The `gh-pages` branch of your repository acts as your web server, where every file in this branch can be made accessible via the URL of your textbook. The URL for your textbook is created, by default, using this pattern: `https://USERNAME.github.io/REPOSITORY-NAME`

![Screenshot highlighting the number of branches, latest commit, and settings tab](new-branch-settings.png)

While your website is ready to go live, it is not live yet. You'll have to make a change to the settings in your repository. 

- Click on the "Settings" tab from the home page of your repository
- In the left sidebar, click on the "Pages" link

![Screenshot highlighting the Pages link from the settings tab](pages.png)

[GitHub Pages](https://pages.github.com) is a free static website hosting service from GitHub. In order to use this service for our textbook project, we'll need to point the web host to the source of our textbook's website files, which is the `gh-pages` branch of our repository.

- In the "Source" drop-down menu, select `gh-pages`
- Keep the section drop-down menu option as: `/(root)`
- Click save

After about one minute or so, your website will be live at: `https://USERNAME.github.io/REPOSITORY-NAME`

Each time you add, edit, or delete files in the `source` directory by committing changes to your repository, your textbook's website will refresh with the new content.

::: exercise :::

### Custom Metadata

You can define new metadata fields in the `metadata.yml` file by creates new [YAML keys](https://learnxinyminutes.com/docs/yaml/) and referencing those keys in the [output templates](https://github.com/nulib-oer/lantern/tree/main/assets/templates). The Pandoc manual has more information about customizing [templates](https://pandoc.org/MANUAL.html#templates) and [metadata](https://pandoc.org/MANUAL.html#metadata-variables).  

:::

## Chapters

The `chapters/` folder includes two sample chapters formatted in Markdown for your reference: `01-introduction.md` and `02-chapter-example.md`. Lantern looks for files in this folder to build out the chapters of the textbook. 

By default, Lantern sets the order of the chapters using the file name. You can set the order of the chapters by adding a numeric prefix to the file name, `00-`, `01-`, `02-`, and so on. Anything after the hyphen (`-`) in the file name can be used for your reference to quickly identify the file. It is a best practice to use all lowercase words separated by hyphens (`-`) in filenames. For example:

1. Preface = `00-preface.md`
1. Chapter One = `01-introduction.md`
1. Chapter Two = `02-chapter-example.md`
1. Chapter Three = `03-probability.md`
1. Chapter Four = `04-binomial-distribution.md`