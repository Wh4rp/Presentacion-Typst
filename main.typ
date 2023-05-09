#import "slides.typ": *
#import "preview-block.typ": *

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
- Soluciona la compilación lenta, el trabajo colaborativo, la creación de macros y templates y es más fácil de aprender que LaTeX.
]

#slide(title: "Problemáticas que soluciona Typst")[
- Compilación rápida a PDF
- Trabajo colaborativo en tiempo real
- Creación sencilla de macros y templates
- Más intuitivo de aprender que LaTeX
]

#slide(title: "Ventajas en comparación a LaTeX")[
- Previsualización en tiempo real
- Mejores mensajes de errores
- Creación de macros más amigables para programadores
]

#slide(theme-variant: "wake up")[
  Open Source
]

#slide(title: "Ventajas de que sea Open Source")[
- Mejora constante
- Flexibilidad
- Transparencia
- Sin costos de licencia
]

#new-section("Cómo ocupar Typst")

#slide(theme-variant: "wake up")[
  Cómo ocupar Typst
]

#slide(title: "Aplicación Web")[
Se puede ocupar Typst en línea desde la página oficial de #link("https://typst.app/")[#text(blue)[Typst]]. Para ello, es necesario crear una cuenta de usuario y luego iniciar sesión en la página web. Una vez iniciada la sesión, se puede comenzar a utilizar Typst en línea.
]

#slide(title: "CLI")[
- Descarga el binario desde el repositorio de #link("https://github.com/typst/typst/releases")[#text(blue)[GitHub]] para tu sistema operativo.
- Usa los siguientes comandos desde la terminal:
  - `typst compile <nombre>`: compila el archivo de Typst con el nombre especificado.
  - `typst watch <nombre>`: compila el archivo de Typst con el nombre especificado y lo actualiza automáticamente cada vez que se guardan cambios en el archivo.

Nota: Yo utilizo el comando `typst watch <nombre-typ> & zathura <nombre-pdf>` para ver los cambios en tiempo real.
]

#slide(title: "Integración con VSCode")[
La extensión #link("https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp")[#text(blue)[Typst LSP]] permite resaltar sintaxis, reportar errores, autocompletar código y ayuda con la firma de funciones. Además, compila a PDF al guardar y puede configurarse para compilar en tiempo real o deshabilitar la función.
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

#slide(title: "Función `#text`")[
  La función `#text` permite darle formato al texto, como cambiar el tamaño, el color, la alineación, etc.
  #preview-block(
    size: 20pt,
    content:"#text(blue)[Typst] es un lenguaje de #text(style:\"italic\")[tipografía] de código abierto para escribir documentos de #text(font:\"Ubuntu Mono\")[alta calidad tipográfica]."
  )
]

#slide(title: "Función `#image`")[
  #text(20pt, align(center,
  grid(
      columns: (auto, auto),
      column-gutter: 20pt,
      align(left, raw-view[#raw(lang:"typ", "Y con ustedes, la #text(blue)[capybara] más famosa de #text(blue)[Typst]
#image(\"src/capybara.jpg\", width: 50%)")]),
      align(left, preview[
        Y con ustedes, la #text(blue)[capybara] más famosa de #text(blue)[Typst]
        #image("src/capybara.jpg", width: 50%)
      ]),
  )
  ))
]

#slide(title: "Función `#link`")[
  #preview-block(
    size: 20pt,
    content:"Puedes encontrar más información en #link(\"https://typst.app/\")[#text(blue)[Typst]]"
  )
]

#slide(title: "Función `#lorem`")[
  #preview-block(
    size: 20pt,
    content:"#lorem(20)"
  )
]

#new-section("Crear nuestras funciones")

#slide(title: "Función `#let`")[
  La función `#let` permite crear nuestras propias funciones.
  #preview-block(
    size: 20pt,
    content:"#let faboloso(term, color: blue) = {
text(color, box[||| #term |||])
}

Tú eres #faboloso[guapisimo]!

Yo soy #faboloso(color: purple)[faboloso]!"
)
]

#new-section("Funciones de reglas")

#slide(title: "Función `#set`")[
  La función `#set` permite establecer reglas que se aplicarán a todo el documento.
  #preview-block(
    size: 20pt,
    content:"#set text(font: \"Ubuntu Mono\")
#set text(fill: blue)
#set par(justify: true)

#lorem(20)")
]

#slide(title: "Función `show`")[
  La función `show` lo que hace es establecer una regla que va a reemplazar el elemento que se indique por lo que nosotros queramos.
  #preview-block(
    size: 20pt,
    content:"#show \"Ping\": \"Pong\"
Ping")
]

#slide(title: "Función `show` obtener el valor")[
  También se puede acceder al valor de la regla con la siguiente sintaxis:
  #preview-block(
    size: 20pt,
    content:"#show \"Hola mundo\": val => [#text(blue)[#val]]
Hola mundo")
]

#slide(title: "Función `show` con selecctor general")[
  Hay veces que queremos pasar el _resto_ del documento como parámetro, para eso se utiliza el selector general.
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

#slide(title: "Podrá Typst reemplazar a LaTeX?")[
  Probablemente *no* a corto plazo:
  - Aún está en fase de desarrollo y por ende le quedan muchas funcionalidades y errores por corregir.
  - LaTeX es un estándar de facto en el mundo científico.
]

#new-section("Despedida")

#slide(theme-variant: "wake up")[
  Gracias por su atención
]