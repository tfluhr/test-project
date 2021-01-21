# Introduction

This book introduces **Lantern** to publishers of Open Educational Resources (OER). Lantern is a publishing workflow that uses [Markdown](https://en.wikipedia.org/wiki/Markdown) and [Pandoc](https://pandoc.org) to make OER available online in HTML, PDF, EPUB, and DOCX formats. Lantern follows open source software convensions by utilizing [Git](https://git-scm.com/) repositories for version control, source packaging, reproducibility, and adaptability. Since open textbooks are intended to be remixed and adaptable, Lantern makes it easy to publish the source material alongside the HTML and PDF versions.

Lantern is a [minimal computing](https://go-dh.github.io/mincomp/about/) approach to help open textbook publishers and creators format and distribute educational texts. These methods make open textbooks that are:

- **Sustainable:** Lantern methods utilize plain text formats and static files in order to minimize installation, hosting, and maintenance costs related to digital web publishing.

- **Portable:** Lantern relies on open source software and non-prorprietary file formats that can run on any machine. Because the web versions of open textbooks are static HTML files, they can be hosted on any web server. No databases, application software, or server maintenance required. 

- **Standards-driven:** Lantern teaches semantic markup standards for document accessibility and compatibility. Lantern enforces a separation between content and styles in order to allow greater flexibility for converting and migrating textbook content.

## Motivation

Publishing is expensive. OER publishing programs require investments in several categories, including project management, editorial services, marketing, and technology. Lantern is an attempt to reduce the technology costs as much as possible in order to increase investments in other publishing cost categories. Our approach to reducing the technology footprint is to apply minimal computing principles to OER publishing. 

The term “[minimal computing](http://go-dh.github.io/mincomp/about/)” was coined in the digital humanities community with respect to the dissemination and preservation of scholarly works. It refers to a practice of using software, hardware, and network bandwidth under certain constraints.[^1] These constraints are intentional and self-imposed. In some ways, minimal computing is a counter-measure against the collateral effects of easy-to-use interfaces:

> The culture of “user friendly” interfaces that helped popularize computers for almost three decades now, and which underlines the dominant role of `.docx`, `.pdf` and `.epub` files today, has also led to some basic misunderstandings of what computers can and should do. In the case of writing, the expectation that you should get what you see continues to distance producers from their tools. As with any human tool, we need to understand computers a bit more intimately if we’re going to use them with any degree of critical awareness, and in order to avoid falling into what Matthew Kirschenbaum dubs the “haptic fallacy,” or “the belief that electronic objects are immaterial simply because we cannot reach out and touch them.” [^2]

In practice, minimal computing is a planning framework for digital projects that essentially asks: "What do we need?" In open education, we need to license and diseminate educational texts in formats that enable unlimited distribution, transformation, and modification. Lantern teaches the value of plain text formats in order to provide flexible multiple publishing and distribution options. Because minimal computing does not imply minimal effort, we hope that Lantern helps flatten the learning curve. 

## Credits

Lantern is led by Chris Diaz (Digital Publishing Librarian) and Lauren McKeen McDonald (Open Education Librarian) of Northwestern University with seed funding from the [Association of Research Libraries](https://www.arl.org/). Lantern would not exist with the research and development contributions of Sherry Wang (Physics, '24). Our goal with Lantern is to distill what we've learned from these communities into a reproducible workflow for any open textbook publisher or [open educational resources](https://en.wikipedia.org/wiki/Open_educational_resources) advocate to use on their own.  

Like most open source projects, Lantern wouldn't exist without building on the foundation of existing open source projects. Lantern is modification of [Pandoc Book Template](https://github.com/wikiti/pandoc-book-template) by [Daniel Herzog Cruz](https://danielherzog.es/) with open textbook features.  

[^1]: “What is Minimal Computing?” (n.d.). _Minimal Computing: a working group of Go::DH_: http://go-dh.github.io/mincomp/about/

[^2]: Gil, Alex. (2015). "The User, the Learner, and the Machines we Make," _Minimal Computing: a working group of Go::DH_: https://go-dh.github.io/mincomp/thoughts/2015/05/21/user-vs-learner/