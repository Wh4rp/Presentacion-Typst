#import "modulos/slides.typ": *
#import "modulos/preview-block.typ": *

// Preambulo

#show "Typst": box[#box(baseline: 0.3em, image("src/typst.svg", height: 0.9em))]
#show "LaTeX": box[#box(baseline: 0.31em, image("src/latex.svg", height: 1.1em))]

#show link: it => [
  #set text(blue)
  #it
]

// Main

#show: slides.with(
    authors: ("Matías Fernández Taipe"), short-authors: "Matías F.",
    title: "Typst: ¿el reemplazo de LaTeX?",
    short-title: "Typst: ¿el reemplazo de LaTeX?", subtitle: "Una alternativa moderna y más amigable a LaTeX",
    date: "10 de Mayo del 2023",
)

#slide(theme-variant: "title slide")

#set text(size: 22pt)

#new-section("Introducción")

#slide(title: "Introducción")[
- Typst es un lenguaje de tipografía de código abierto para escribir documentos de alta calidad tipográfica.
- Creado por desarrolladores insatisfechos con LaTeX, ofrece una sintaxis sencilla y moderna.

#align(center, image("src/mockup.png", width: 85%))
]

#slide(title: "Problemáticas que soluciona Typst")[
- Compilación rápida a PDF
- Trabajo colaborativo en tiempo real
- Creación sencilla de macros y templates
]

#slide(title: "Ventajas en comparación a LaTeX")[
- Previsualización en tiempo real
- Mejores mensajes de errores
- Sintáxis más intuitiva de aprender
]

#new-section("Comparativa")

#slide(theme-variant: "wake up")[
  Comparativa LaTeX vs Typst
]

#slide(title: [#text(20pt)[`Fibonacci.tex`]])[
#align(center)[#text(9pt)[#box(fill: luma(230), inset: 5pt)[
#align(left)[
```latex
\documentclass{article}
\usepackage{amsmath}
\usepackage{geometry}

\geometry{a4paper, margin=2cm}

\pagestyle{empty}

\begin{document}

\begin{center}
  {\LARGE \textbf{Secuencia de Fibonacci}}
\end{center}

\section{Definición Recursiva}

La secuencia de Fibonacci se define de forma recursiva como:

\begin{equation*}
    F_n = \begin{cases}
               0 & \text{si } n = 0 \\
               1 & \text{si } n = 1 \\
               F_{n-1} + F_{n-2} & \text{si } n > 1
           \end{cases}
\end{equation*}

\section{Ecuación Cerrada}

La secuencia de Fibonacci también se puede expresar mediante la siguiente ecuación cerrada:

\begin{equation*}
    F_n = \frac{1}{\sqrt{5}}\left[\left(\frac{1 + \sqrt{5}}{2}\right)^n - \left(\frac{1 - \sqrt{5}}{2}\right)^n\right]
\end{equation*}

\end{document}
```
]]]]
]

#slide(title: [#text(20pt)[`Fibonacci.typ`]])[
#align(center)[#text(12pt)[#box(fill: luma(230), inset: 5pt)[
#align(left)[
```typst
#set page(paper: "a5", margin: 2cm)
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
```]]]]
]

#slide(title: "")[
  #let pdf-image(link: "", caption: "", width: 67%) = figure(
      box(inset: 5pt, fill: luma(230))[
        #image(link, width: width)
      ],
      caption: caption
  )

  #grid(
    columns: (auto, auto),
    rows: (auto, auto),
    gutter: 3pt,
    pdf-image(link: "src/fibonacci-latex.png", caption: "LaTeX"),
    pdf-image(link: "src/fibonacci-typst.png", caption: "Typst"),
  )

]

#new-section("Cómo ocupar Typst")

#slide(theme-variant: "wake up")[
  Cómo ocupar Typst
]

#slide(title: "Aplicación Web")[
Se puede ocupar Typst en línea desde la página oficial de #link("https://typst.app/")[\Typst]. Para ello, es necesario crear una cuenta de usuario y luego iniciar sesión en la página web. Una vez iniciada la sesión, se puede comenzar a utilizar Typst en línea.
]

#slide(title: "CLI")[
- Descarga el binario desde el repositorio de #link("https://github.com/typst/typst/releases")[GitHub] para tu sistema operativo.
- Usa los siguientes comandos desde la terminal:
  - `typst compile <nombre>`: compila el archivo de Typst con el nombre especificado.
  - `typst watch <nombre>`: compila el archivo de Typst con el nombre especificado y lo actualiza automáticamente cada vez que se guardan cambios en el archivo.

Nota: yo utilizo el comando `typst watch <nombre-typ>` y `zathura <nombre-pdf>` para ver los cambios en tiempo real.
]

#slide(title: "Integración con VSCode")[
La extensión #link("https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp")[Typst LSP] permite resaltar sintaxis, reportar errores, autocompletar código y ayuda con la firma de funciones. Además, compila a PDF al guardar y puede configurarse para compilar en tiempo real o deshabilitar la función.
]

#slide(title: "Documentación")[
La documentación de Typst se encuentra en #link("https://typst.app/docs")[\Typst Docs].
]

#slide(title: "Modos de Typst")[
Typst tiene tres modos:

1. *markup*
3. *matemático*
2. *código*
]

#slide(title: "Modo markup")[
Modo por defecto, y se utiliza para escribir texto normal, con algunas caracteristicas que enriquecen el texto al estilo de Markdown.
]

#slide(title: "Ejemplo markup")[
#preview-block(
    size: 20pt,
    content:"= Este es un título
Hola, este es un párrafo normal.
- item 1
- item 2
    + subitem 1
    + subitem 2
== Subtítulo
Letras en _cursiva_ y *negrita*."
)
]

#slide(title: "Modo matemático")[
Para entrar en modo matemático se utiliza `$<ecuaciones>$` al igual que en Markdown o LaTeX. Y si se quiere escribir una ecuación en una línea aparte, se utiliza `$ <ecuaciones> $`.

Typst tiene una gran cantidad de símbolos matemáticos, y se pueden consultar en la #link("https://typst.app/docs/reference/symbols/sym/",[documentación]).
]

#slide(title: "Ejemplo modo matemático")[
#preview-block(
    size: 20pt,
    content:"= Ecuación en línea
El área de un círculo de radio $r$ es $A = pi r^2$.

= Ecuación en línea aparte
Llamaremos $cal(A)$ al conjunto definido por $ cal(A) = {x in RR | x > 0} $",
)
]

#slide(title: "Modo código")[
Vamos a ver algunas funciones y macros que permiten darle formato al documento. De todos modos hay una lista más extensa de funcionalidades.

Normalmente sigue el patrón:

#raw-view(
width: auto,
```typ
#función(argumentos)[
  contenido
]
```)

El `#` se utiliza para desambiguar el modo código del modo markup, cuando ya se está en el modo código y se quiere ocupar de nuevo una función no es necesario volverla a ocupar.
]

#slide(title: [Función `#text`])[
  La función `#text` permite darle formato al texto, como cambiar el tamaño, el color, la alineación, etc.
  #preview-block(
    size: 20pt,
    content:"#text(blue)[\Typst] es un lenguaje de #text(style:\"italic\")[tipografía] de código abierto para escribir documentos de #text(font:\"Ubuntu Mono\")[alta calidad tipográfica]."
  )
]

#slide(title: [Función `#image`])[
  #text(20pt, align(center,
  grid(
      columns: (auto, auto),
      column-gutter: 20pt,
      align(left, raw-view[#raw(lang:"typ", "Y con ustedes, la #text(blue)[capybara] más famosa de #text(blue)[\Typst]
#image(\"src/capybara.jpg\", width: 50%)")]),
      align(left, preview[
        Y con ustedes, la #text(blue)[capybara] más famosa de #text(blue)[\Typst]
        #image("src/capybara.jpg", width: 50%)
      ]),
  )
  ))
]

#slide(title: [Función `#link`])[
  #preview-block(
    size: 20pt,
    content:"Puedes encontrar más información en #link(\"https://typst.app/\")[\Typst]"
  )
]

#slide(title: "Función `#lorem`")[
  #preview-block(
    size: 20pt,
    content:"#lorem(20)"
  )
]

#new-section("Variables, funciones y modularización")

#slide(theme-variant: "wake up")[
  Variables, funciones y modularización
]

#slide(title: [Función `#let`])[
  La función `#let` permite crear nuestras propias variables y funciones.
  #preview-block(
    size: 20pt,
    content:"#let faboloso(term, color: blue) = {
  text(color, box[||| #term |||])
}

Tú eres #faboloso[guapisimo]!

Yo soy #faboloso(color: purple)[faboloso]!"
)
]

#slide(title: [Función `#import`])[
  La función `#import` permite importar variables y funciones de otros archivos. Supongamos tenemos el archivo `faboloso.typ` con la función `faboloso`:
  #raw-view(
width: auto,
```typ
#let faboloso(term, color: blue) = {
  text(color, box[||| #term |||])
}
```)

  Luego lo podemos llamar de la siguiente manera:

#text(20pt, align(center,
  grid(
      columns: (auto, auto),
      column-gutter: 20pt,
      align(left, raw-view[#raw(lang:"typ", "#import \"faboloso.typ\": faboloso

Tú eres #faboloso[guapisimo]!

Yo soy #faboloso(color: purple)[faboloso]!")]),
      align(left, preview[
        #let faboloso(term, color: blue) = {
text(color, box[||| #term |||])
}
        Tú eres #faboloso[guapisimo]!

        Yo soy #faboloso(color: purple)[faboloso]!
      ]),
  )
  ))

]

#new-section("Funciones de reglas")

#slide(theme-variant: "wake up")[
  Funciones de reglas
]

#slide(title: [Función `#set`])[
  La función `#set` permite establecer reglas que se le aplican a los elementos que se indiquen. Los elementos que se pueden modificar son todos aquellos que tienen asociado alguna función.

  #preview-block(
    size: 20pt,
    content:"#set text(font: \"Ubuntu Mono\")
#set text(fill: blue)
#set par(justify: true)

#lorem(20)")

]

#slide(title: [Función `#set` y scope])[
  Las reglas que se establecen con `#set` tienen el scope del bloque de contenido en donde se encuentran.

  #preview-block(
    size: 20pt,
    content:"Esto se ve afectado #[
  #set list(marker: [--])
  - Dash
]

Pero esto no:
- Bullet"
)
]

#slide(title: [Función `#show`])[
  La función `show` lo que hace es establecer una regla que va a reemplazar el elemento que se indique por lo que nosotros queramos.
  #preview-block(
    size: 20pt,
    content:"#show \"Ping\": \"Pong\"
Ping")
]

#slide(title: [Función `#show` obtener el valor])[
  También se puede acceder al valor de la regla con la siguiente sintaxis:
  #preview-block(
    size: 20pt,
    content:"#show \"Hola mundo\": val => [#text(blue)[#val]]
Hola mundo")
]

#slide(title: [Función `#show` con selecctor universal])[
  Hay veces que queremos pasar el _resto_ del documento como parámetro, para eso se utiliza el selector universal.
  #preview-block(
    size: 18pt,
    content:"#show: rest => columns(2, rest)

= Introduction
#lorem(15)

= Related Work
#lorem(2)

= Related Work
#lorem(2)"
)
]

#new-section("Discusión final")

#slide(theme-variant: "wake up")[
  Discusión final
]

#slide(title: "Podrá Typst reemplazar a LaTeX?")[
  Probablemente *no* a corto plazo:
  - Aún está en fase de desarrollo y por ende le quedan muchas funcionalidades y errores por corregir.
  - LaTeX es un estándar de facto en el mundo científico.

  Pese a esto, Typst es una herramienta muy interesante y con mucho potencial.
]

#slide(title: "Links de interés")[
  - #link("https://typst.app/")[Página oficial]
  - #link("https://typst.app/docs/")[Documentación oficial]
  - #link("https://github.com/typst/typst")[Repositorio de GitHub]
  - #link("https://github.com/qjcg/awesome-typst")[Awesome \Typst]
  - #link("https://discord.gg/2uDybryKPe")[Discord oficial]
]

#new-section("Despedida")

#slide(theme-variant: "wake up")[

  #set align(center)

  Gracias por su atención!

  #image("src/capybara-bye.png", width: 60%)
]