## Basic Chapter Elements

Veggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic.

### Learning Objectives

Unnumbered:

::: learning-objectives

- Objective
- Objective
- Objective

::: 

Numbered:

::: learning-objectives

1. Objective
2. Objective
3. Objective

::: 

### Media 

[![Markdown Tutorial](http://img.youtube.com/vi/2JE66WFpaII/0.jpg)](http://www.youtube.com/watch?v=2JE66WFpaII "Markdown Tutorial")

### Paragraphs

Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens dandelion okra wakame tomato. Dandelion cucumber earthnut pea peanut soko zucchini.

#### Subsections

Turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi **amaranth water spinach** avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin _onion chickpea gram_ corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.

### Figure Images

This is the first subsection. Please, admire the gloriousnes of this graph:

![A cool graph](graph.png){#fig:graph}

### Tables

Tables need to be finalized _before_ they are formatted in Markdown. It is recommended to use a [Markdown table generator](https://www.tablesgenerator.com/markdown_tables), rather than formatting tables in Markdown by hand. Some Markdown table generators will allow you to [import tables created in Excel or CSV formats](https://jakebathman.github.io/Markdown-Table-Generator/). 

| Index | Name |
| ----- | ---- |
| 0     | AAA  |
| 1     | BBB  |
| ...   | ...  |

Table: This is an example table. {#tbl:table}

## More Elements

### Math

Formula example: $\mu = \sum_{i=0}^{N} \frac{x_i}{N}$

Now, full size:

$$\mu = \sum_{i=0}^{N} \frac{x_i}{N}$$ {#eq:equation}

### Code

And a code sample:

```rb
def hello_world
  puts "hello world!"
end

hello_world
```

Check these unicode characters: ǽß¢ð€đŋμ

### Cross references

These cross references are disabled by default. To enable them, check the
_[Cross references](https://github.com/wikiti/pandoc-book-template#cross-references)_
section on the README.md file.

Here's a list of cross references:

- Check @fig:graph.
- Check @tbl:table.
- Check @eq:equation.