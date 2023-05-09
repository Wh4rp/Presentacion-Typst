#let raw-view(
    width: 100%,
    term
) = block(
    width: width,
    fill: luma(230),
    inset: 8pt,
    radius: 4pt,
    term
)

#let preview(term) = block(
    width: 100%,
    fill: luma(230),
    inset: 10pt,
    radius: 4pt,
    block(
        width: 100%-20pt,
        fill: luma(255),
        inset: 8pt,
        radius: 4pt,
        term
    )
)

#let preview-block(
    size: 12pt,
    content: "",
) = {
text(size, align(center,
grid(
    columns: (auto, auto),
    column-gutter: 20pt,
    align(left, raw-view[#raw(lang:"typ", content)]),
    align(left, preview[#eval("["+content+"]")]),
)
))
}

#preview-block(
    size: 12pt,
    content:"= Este es un título
Hola, este es un párrafo normal.
- item 1
- item 2
    + subitem 1
    + subitem 2
== Subtítulo
#lorem(5)",
)