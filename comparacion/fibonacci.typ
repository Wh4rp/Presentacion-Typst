#import "tablex.typ": *

#set page(paper: "a5", margin: 1cm)
#set heading(numbering: "1   ")

#align(center)[
    #text(size: 18pt, weight: 600)[Secuencia de Fibonacci]
]

= Definición Recursiva

La secuencia de Fibonacci se define de forma recursiva como:

$ F_n = cases(
0 &"si" n = 0,
1 &"si" n = 1,
F_(n-1) + F_(n-2) &"si" n > 1
) $

= Ecuación Cerrada

La secuencia de Fibonacci también se puede expresar mediante la siguiente ecuación cerrada:

$ F_n = 1 / sqrt(5) [ ((1 + sqrt(5)) / (2))^n - ((1 - sqrt(5))/(2))^n ] $

= Tabla de Valores

A continuación se muestra una tabla que presenta los primeros 10 números de la secuencia de Fibonacci:

#let black_stroke = hlinex(start: 0, end: 2, stroke: 0.5pt)

#figure(
    tablex(
    columns: 2,
    auto-lines: false,
    black_stroke,
    [$n$], [$F_n$],
    black_stroke,
    [0], [0],
    [1], [1],
    [2], [1],
    [3], [2],
    [4], [3],
    [5], [5],
    [6], [8],
    [7], [13],
    [8], [21],
    [9], [34],
    black_stroke,
  ),
  caption: [Los primeros 10 números de la secuencia de Fibonacci.],
)