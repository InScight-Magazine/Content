#let ceriticatePage(name, pronoun) = [
#set page(
    paper: "a4",
    flipped: true,
    background: image("background.svg", width: 100%),
    margin: 2.5em,
  )

#let inscightRed = rgb("bd2033")
#let darkGrey = rgb("353535")
#set text(font: "Times New Roman", weight: "semibold", size: 1.9em, fill: darkGrey)
#set par(justify: true, spacing: 0.9em, leading: 0.4em)
#show heading: set text(font: "Times New Roman", weight: "regular", size: 1.7em, fill: darkGrey)

// #place(
//   left + horizon,
//   dx: -1em,
//   line(length: 30%, angle: 90deg, stroke: 0.15em + inscightRed),
// )
// #place(
//   right + horizon,
//   dx: 1em,
//   line(length: 30%, angle: 90deg, stroke: 0.15em + inscightRed),
// )
#place(
  top + left,
  dy: -1.5em,
  dx: -1.5em,
  line(length: 6em, stroke: 0.15em + inscightRed)
)
#place(
  top + left,
  dy: -1.55em,
  dx: -1.5em,
  line(length: 4em, angle: 90deg, stroke: 0.15em + inscightRed),
)
// #place(
//   top + right,
//   dy: -1.5em,
//   dx: 1.5em,
//   line(length: 6em, stroke: 0.1em + inscightRed)
// )
// #place(
//   top + right,
//   dy: -1.55em,
//   dx: 1.5em,
//   line(length: 4em, angle: 90deg, stroke: 0.1em + inscightRed),
// )
#place(
  bottom + right,
  dy: 1.5em,
  dx: 1.5em,
  line(length: 6em, stroke: 0.15em + inscightRed)
)
#place(
  bottom + right,
  dy: 1.55em,
  dx: 1.5em,
  line(length: 4em, angle: 90deg, stroke: 0.15em + inscightRed),
)

#grid(
    columns: (0.3fr, 1fr, 0.3fr),
    align: (center + horizon, center + horizon, center + horizon),
    image("iiserLogo.png", height: 120pt),
    heading(level: 1, text(fill: inscightRed, [*Certificate*]) + [ \ of \ *Appreciation*]),
    image("inscightLogo.png", height: 120pt),
  )

#v(2em)
#align(center,
    box(width: 75%,
    [This certificate is presented to #parbreak()
    #text(fill: inscightRed, [*#emph(name)*]) #parbreak()
    in recognition of #pronoun.trim() valuable contributions to *InScight*, the science magazine of IISER Kolkata, for promoting scientific awareness through creativity and dedication.]
    )
  )
#v(3em)

#set par(justify: false)
#grid(
    columns: (1fr, 1fr, 1fr),
    align: (center, center, center),
    gutter: 2em,
    line(length: 80%, stroke: 0.1em + darkGrey) + text(size: 0.9em, [Prof. Debasish Koley]) + linebreak() + text(size: 0.7em, [(Dean of International Relations and Outreach)]),
    line(length: 80%, stroke: 0.1em + darkGrey) + text(size: 0.9em, [Prof. Anirban Banerjee]) + linebreak() + text(size: 0.7em, [(Associate Dean of International \ Relations and Outreach)]),
    line(length: 80%, stroke: 0.1em + darkGrey) + text(size: 0.9em, [Prof. Ayan Banerjee]) + linebreak() + text(size: 0.7em, [(Dean of Student Affairs)]),
)
]
