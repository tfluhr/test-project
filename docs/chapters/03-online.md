## Online Publishing with GitHub

This workflow demonstrates using Doctic with GitHub a the textbook publishing tool. 

#### GitHub

GitHub is not software we need to install; GitHub is a web service for managing [Git](https://git-scm.com/) Repositories. Anyone can sign up for a free GitHub account to use their services for open source projects. One of the nice features that GitHub provides its users is GitHub Actions. GitHub Actions can run digital production tasks _on our behalf_ using web servers they provide to us on demand.Here's what GitHub Actions can do for us automatically:

- Detect changes to our Markdown source files
- Update the web, PDF, EPUB, and DOCX versions of our open textbooks

Doctic provides all of the configurations we need to use this service.

### GitHub Pages

- Install VS Code
- Fork the GitHub repository to user's account
- Upload Markdown files to `chapters` directory
- Edit `metadata.yml` file

### Self-Hosted

- Install Pandoc

#### Pandoc

Pandoc is free and open source software that converts between file formats. We'll use it to convert between Markdown, Microsoft Word, HTML, EPUB, and PDF formats. Pandoc is used entirely from a computer terminal by running `pandoc` commands from the shell prompt. 

Here's some guidance on installing [Pandoc](https://pandoc.org/):

- Visit the Pandoc Releases page on GitHub: https://github.com/jgm/pandoc/releases
- Pandoc provides options for Windows, macOS, and Linux. The `.msi` and `.pkg` files include installation Wizards for easy setup on Windows and macOS respectively. 

Once the installation completes, you can check to make sure everything worked as expected by opening a terminal and runnning: `pandoc --version`. This should return the Pandoc version number.  

#### Digital Production with Pandoc and Make

The digital production tasks are handled by a combination of [Pandoc](https://pandoc.org/) and [Make](https://www.gnu.org/software/make/). Pandoc is "a universal document converter" that will manage the conversion process between Markdown, HTML, PDF, EPUB, and DOCX formats. Make is a package bundler that simplifies our use of Pandoc by pre-setting a few sensible defaults for open textbook creation. Both are free software distributed under [General Public Licenses](https://www.gnu.org/licenses/licenses.html#GPL).