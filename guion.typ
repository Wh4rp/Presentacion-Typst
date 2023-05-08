= Guión presentación de Typst

== Introducción

¡Bienvenidos a mi presentación sobre Typst! ¿Alguna vez has trabajado con LaTeX y te has sentido frustrado por su complejidad y lentitud? Si es así, entonces Typst podría ser la solución que estás buscando. Typst es un lenguaje de tipografía de código abierto que ofrece una sintaxis sencilla y moderna para escribir documentos de alta calidad tipográfica.

Desde su inicio en 2019, el equipo detrás de Typst ha estado comprometido con la colaboración abierta y la comunidad de código abierto. El lenguaje fue creado por un grupo de desarrolladores que estaban insatisfechos con LaTeX y buscaban una alternativa más rápida y fácil de usar. En marzo del 2023 se abrió la beta abierta y desde entonces ha crecido hasta llegar a más de 17.000 estrellas en GitHub y una comunidad de Discord con más de 2.700 miembros.

En esta presentación, exploraremos cómo Typst se compara con otros lenguajes de marcado similares, y las características y ventajas que ofrece. También veremos herramientas utilizadas para crear archivos de Typst, como por ejemplo VSCode o su App Web, para crear presentaciones, informes, artículos y más. Cabe mencionar que su aplicación web nos permite trabajar de forma colaborativa en tiempo real.

En resumen, Typst es una opción excelente para aquellos que buscan una manera sencilla y moderna de escribir documentos con formato profesional, y que valoran la colaboración abierta y la comunidad de código abierto. ¡Así que vamos a adentrarnos en el mundo de Typst y ver cómo puede mejorar nuestra forma de escribir documentos!

== Problemáticas que soluciona Typst

- *Compilación rápida a PDF*: Una de las problemáticas que resuelve Typst es la compilación lenta que se puede experimentar al utilizar LaTeX. La compilación en Typst es mucho más rápida, lo que significa que los usuarios pueden ahorrar tiempo y aumentar su productividad. Además, Typst tiene una función de previsualización en tiempo real, lo que permite a los usuarios ver cómo se verá el documento final mientras lo están editando, sin tener que compilar todo el documento cada vez que realizan un cambio.

- *Trabajo colaborativo*: Typst permite el trabajo colaborativo en tiempo real. Los usuarios pueden trabajar en el mismo documento simultáneamente, lo que facilita la colaboración en equipo. Esto es particularmente útil para proyectos en los que varios autores necesitan trabajar juntos en un documento, ya sea para una presentación, un informe o un artículo.

- *Creación sencilla de macros y templates*: Typst tiene una sintaxis clara y sencilla, lo que facilita la creación de macros y templates personalizados. Esto significa que los usuarios pueden personalizar sus documentos de acuerdo a sus necesidades y preferencias, lo que les permite ahorrar tiempo y aumentar su eficiencia. Además, los usuarios pueden compartir sus macros y templates con la comunidad, lo que fomenta la colaboración y el intercambio de conocimientos.

- *Más intuitivo de aprender que LaTeX*: Typst es más fácil de aprender que LaTeX, ya que su sintaxis es más sencilla y moderna. Esto significa que los usuarios pueden comenzar a trabajar en documentos rápidamente, sin tener que invertir mucho tiempo en aprender la sintaxis y la estructura de LaTeX. Además, Typst tiene una documentación clara y completa, lo que facilita la comprensión de su funcionamiento y características.

== Ventajas en comparación a

=== LaTex

- *Previsualización en tiempo real*: Typst tiene una función de previsualización en tiempo real, lo que permite a los usuarios ver cómo se verá el documento final mientras lo están editando, sin tener que compilar todo el documento cada vez que realizan un cambio.
- *Mejores mensajes de errores*: Typst tiene mensajes de error más claros y fáciles de entender que LaTeX, lo que facilita la solución de problemas y la depuración de código.
- *Creación de macros más amigables para programadores*: Typst tiene una sintaxis más sencilla y moderna que LaTeX, lo que facilita la creación de macros y templates personalizados. Esto significa que los usuarios pueden personalizar sus documentos de acuerdo a sus necesidades y preferencias, lo que les permite ahorrar tiempo y aumentar su eficiencia. Además, los usuarios pueden compartir sus macros y templates con la comunidad, lo que fomenta la colaboración y el intercambio de conocimientos.

=== Word
- *Fácil modo colaborativo*: Typst permite el trabajo colaborativo en tiempo real. Los usuarios pueden trabajar en el mismo documento simultáneamente, lo que facilita la colaboración en equipo. Esto es particularmente útil para proyectos en los que varios autores necesitan trabajar juntos en un documento, ya sea para una presentación, un informe o un artículo.
- *Puedes cambiar el formato de tu documento sin tener que hacerlo manualmente en todo el documento*: por ejemplo, si decides que quieres cambiar el tipo de letra o tamaño de fuente en todo el documento, en lugar de tener que ir página por página y cambiar el formato manualmente, puedes simplemente cambiar la configuración de formato en el archivo de Typst y automáticamente actualizará en todo el documento.\
Esta funcionalidad es muy útil cuando se trabaja con documentos largos o complejos, ya que permite ahorrar tiempo y esfuerzo en el proceso de edición y formateo del documento. En contraste, con Word a menudo es necesario ir página por página y hacer cambios manuales de formato, lo que puede ser tedioso y propenso a errores.

=== Google Docs:
- *Documentos más profesionales*
- *Mayor cantidad de opciones de formato*: como por ejemplo el modo matemático, que permite escribir ecuaciones matemáticas de forma sencilla y rápida.

== Open Source

Ser open source significa que el código fuente de Typst está disponible públicamente y puede ser modificado, mejorado y distribuido libremente por cualquiera que tenga la habilidad técnica y los recursos necesarios. Esta característica es una gran ventaja para Typst por varias razones:

- Mejora constante: Al ser open source, Typst se beneficia de la colaboración abierta de la comunidad de desarrolladores y usuarios que pueden sugerir mejoras, solucionar problemas y hacer contribuciones al proyecto. Esto permite una mejora constante del lenguaje y su adaptación a las necesidades de la comunidad.

- Flexibilidad: Al ser open source, los usuarios tienen la libertad de modificar el código fuente de Typst para adaptarlo a sus necesidades específicas. Esto significa que los usuarios pueden crear versiones personalizadas de Typst con funcionalidades y características que no están disponibles en la versión estándar.

- Transparencia: Al ser open source, los usuarios pueden examinar el código fuente de Typst y entender cómo funciona internamente. Esto aumenta la confianza en la seguridad y privacidad del lenguaje.

- Gratuito: Al ser open source, Typst es gratuito y de libre distribución. Esto hace que sea accesible para cualquier persona que quiera utilizarlo sin costos adicionales.

En resumen, la naturaleza open source de Typst permite que la comunidad de desarrolladores y usuarios trabajen juntos para mejorar el lenguaje, crear versiones personalizadas y aumentar la transparencia y accesibilidad del lenguaje.

== Sintáxis y modos de Typst

Typst se basa en dos modos principales: el *modo markup* o bloques de contenido y el *modo código* o de funciones.

El de markup es el modo por defecto, y se utiliza para escribir texto normal, con algunas caracteristicas que enriquecen el texto al estilo de Markdown. Y el modo código se utiliza para escribir funciones y macros, que permiten modificar bloques de contenido y darle formato al documento.

#grid(
    columns: (50%, 50%),
    gutter: 20pt,
```typ
= Este es un título
Hola, este es un párrafo normal.
- item 1
- item 2
    + subitem 1
    + subitem 2
== Subtítulo
#lorem(10)
```,
[= Este es un título
Hola, este es un párrafo normal.
- item 1
- item 2
    + subitem 1
    + subitem 2
== Subtítulo
#lorem(10)
]
)

Por defecto se utiliza el modo markup, pero se puede cambiar a modo código se debe comenzar con un `#` y luego el nombre de la función o macro que se quiere utilizar. Nota importante: el `#` se utiliza para desambiguar el modo código del modo markup, cuando ya se está en el modo código y se quiere ocupar de nuevo una función no es necesario volverla a ocupar.

La función `#lorem(n)`: genera un parráfo de texto lorem ipsum de `n` palabras.

Para desanbiguar que queremos entrar al modo markup se embuelve en `[]`.

== Modo matemático

Para entrar en modo matemático se utiliza `$` al igual que en Markdown o LaTeX.

#grid(
    columns: (50%, 50%),
    gutter: 20pt,
```typ
= Ecuación
La mitad de $1$ se escribe $1 / 2$.
```,
[= Ecuación
La mitad de $1$ se escribe $1 / 2$.
]
)

Para crear bloques de ecuaciones se hace con un espacio en blanco antes y después de la ecuación.

#grid(
    columns: (50%, 50%),
    gutter: 20pt,
```typ
= Ecuación
La mitad de $1$ se escribe:
$  1 / 2 $
```,
[= Ecuación
La mitad de $1$ se escribe:
$ 1 / 2 $
]
)

=== Sintaxis de símbolos intuitiva

La sintaxis de Typst es intuitiva y fácil de aprender. Esto significa que los usuarios pueden escribir ecuaciones de forma rápida y eficiente, lo que aumenta su productividad y eficiencia.

#grid(
    columns: (50%, 50%),
    gutter: 20pt,
```typ
= Ecuación
$ A = pi r^2 $
$ "area" = pi dot "radius"^2 $
$ cal(A) :=
    { x in RR | x "is natural" } $
#let x = 5
$ #x < 17 $
```,
[= Ecuación
$ A = pi r^2 $
$ "area" = pi dot "radius"^2 $
$ cal(A) :=
    { x in RR | x "is natural" } $
#let x = 5
$ #x < 17 $
]
)

==== Alinear ecuaciones

Para alinear ecuaciones se utiliza `&` para indicar el punto de alineación. Y se dan saltos de línea con `\\`.

#grid(
    columns: (50%, 50%),
    gutter: 20pt,
```typ
$ sum_(k=0)^n k
    &= 1 + ... + n \
    &= (n(n+1)) / 2 $
```,
[$ sum_(k=0)^n k
    &= 1 + ... + n \
    &= (n(n+1)) / 2 $]
)

== Modo código

Vamos a ver algunas funciones y macros que permiten darle formato al documento. De todos modos hay una lista más extensa de funcionalidades.

=== Cambiar el formato de un párrafo


#grid(
    columns: (50%, 50%),
    gutter: 20pt,
```typ
#par(justify: true)[
  = Título
  #lorem(40).
]
```,
[#par(justify: true)[
  = Título
  #lorem(40).
]]
)

Esto sólo cambia el formato de todo el bloque de contenido que se le pasa como argumento. Para hacer que este cambio sea permanente se debe utilizar la macro `#set`.

#grid(
    columns: (50%, 50%),
    gutter: 20pt,
```typ
#set par(justify: true)

= Título
#lorem(40).
```,
[
#set par(justify: true)

= Título
#lorem(40).
]
)