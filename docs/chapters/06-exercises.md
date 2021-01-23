# Custom Blocks

Lantern uses custom blocks[^1] to give you the flexibility to customize the styles for specific sections within your textbook. Custom blocks in Lantern begin and end with three colons `:::` and are separated by empty lines before and after they occur in the text (like paragraphs). You can label the custom block anything by placing the label after the opening three colons. Custom block labels are case-senstive and must contain spaces (use hyphens to sepearate multi-word labels for readability). Here's an example:

```
::: block

Some text.

:::
```

The custom block label becomes a `class` attribute for a `div` element in the resulting HTML:

```
<div class="block">
Some text.
</div>
```

Similarly, the label becomes a new LaTeX environment:

```
\begin{block}
Some text.
\end{block}
```

Now, it is up to you to define the CSS rules or LaTeX macros that apply to the blocks. 

[^1]: This feature is inspired by [Bookdown](https://bookdown.org/yihui/bookdown/custom-blocks.html)