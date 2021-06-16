# Media Assets

Lantern supports adding images and embedding video or audio from streaming services. 

## Images

Add image elements to your textbook chapters using this syntax:

```
![Alt Text / Image Caption](filame.png "optional image title")
```
Images are block elements that need to be on their own lines, separated by empty lines, like paragraphs. 

Example from the [Bibliographies](#bibliographic-citations) chapter:

```
![Screenshot of the BibTex Citation Displayed in the Browser](bib_gs-citation.png)
```

### Managing Your Images

Store your images in the `/source/images/` folder. We recommend using simple filenames to easily reference your images in the source text and also manage them within the folder. When you're building your output formats, the images will be copied to the `/public/` folder.

Image file names must not contain any spaces or special characters. We recommend using lowercase filenames with underscores (`_`) or hyphens (`-`) to separate words. 

[PNG](https://en.wikipedia.org/wiki/Portable_Network_Graphics) and [JPEG](https://en.wikipedia.org/wiki/JPEG) file formats give the best results. We recommend PNG files for computer graphics and JPEG files for photos. Be mindful of the image dimensions. You can use basic image viewing software on your computers to scale the image to no wider than 800px. This will help keep the file size small, lower your storage needs, and improve the page load / download performance of your resulting output formats.

Large images can greatly reduce your textbook's website load time or the size of your PDF output file. Therefore, we recommend using image compression tools to help reduce file size for serving on the web or embedding in PDFs. [TinyPNG](https://tinypng.com/) and [TinyJPG](https://tinyjpg.com/) are free web services that will compress your PNG and JPG files. 

## Embedded Video and Audio

Lantern does not provide a media streaming mechanism on its own, but you can use the embed code from any media streaming service to include video or audio within the HTML version of your project. 

Streaming services typically provide embed code as part of the "Share" feature for the item. Embed code is raw HTML code that looks like this:

```html
<iframe width="560" height="315" src="https://www.youtube.com/embed/YPo1nlT2XMg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
```

Copy the emded code from the streaming service and paste it directly within the Markdown document where you want the media embed to appear in the text. 