#import "template.typ": diapo, transition
#import "algo.typ" : code

#show: diapo.with(
  title: "Typst: el sucesor de LaTex",
  author: "Matías Fernández",
  date: "10-05-2023",
  display_lastpage: true,
)

= Introducción

Typst es un lenguaje de tipografía que permite escribir documentos similares a los de LaTex, pero con una sintaxis más simple y moderna.

#transition[Ejemplo rápido]

= Ejemplo rápido

#text(size:5pt)[#code(
  line-numbers: false, 
  inset: 5pt, 
  row-gutter: 5pt,
  column-gutter: 5pt,
)[
```typ
= Easy Bread Recipe

#let cups_to_ml(nbr_cup) = int(236.588 * nbr_cup)

== Ingredients
- $4 1/2$ to 5 cups (540g to 600g) of Bread Flour
- 1 tablespoon (11g) granulated sugar
- 2 1/4 teaspoons instant yeast
- 2 1/2 teaspoons (15g) salt
- 1 2/3 cups (#cups_to_ml(1.666)ml) water, lukewarm (90°F to 110°F)

== Preparation

+ Stir together all of the ingredients in a large bowl
+ Turn the dough out onto a lightly floured surface,  
  using some of the additional 1/2 cup of flour 
  called for.
+ Place the dough in a bowl that’s been lightly
  greased with vegetable oil
+ Bake the bread for 20 to 25 minutes

#link("https://bit.ly/3LLjlTD")[Original Recipe]
  ```
]]

= Ejemplo 2

#code(line-numbers: false)[
```typ
= Easy Bread Recipe

#let cups_to_ml(nbr_cup) = int(236.588 * nbr_cup)

== Ingredients
- $4 1/2$ to 5 cups (540g to 600g) of Bread Flour
- 1 tablespoon (11g) granulated sugar
- 2 1/4 teaspoons instant yeast
- 2 1/2 teaspoons (15g) salt
- 1 2/3 cups (#cups_to_ml(1.666)ml) water, lukewarm (90°F to 110°F)

== Preparation

+ Stir together all of the ingredients in a large bowl
+ Turn the dough out onto a lightly floured surface,  
  using some of the additional 1/2 cup of flour 
  called for.
+ Place the dough in a bowl that’s been lightly
  greased with vegetable oil
+ Bake the bread for 20 to 25 minutes

#link("https://bit.ly/3LLjlTD")[Original Recipe]
  ```
]

= Relax

#align(horizon)[
 #set text(size: 28pt)
 $ e^(i pi) + 1 = 0 $
]

= The journey back home

It was exhausting.

= Conclusion

That was short.