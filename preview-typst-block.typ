#let preview-block(block) = {
    let block_raw = raw(block)
    grid(
        columns: (auto, auto),
        gutter: 3pt,
        block_raw,
        block
    )
}

#preview-block([
    ```tyspt
])
