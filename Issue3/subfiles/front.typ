#import "/template-files/inscight-template.typ": *
#import "/dataFiles/issueConstants.typ": *
#set page(
    header: none,
    footer: none,
    margin: 0em,
    background: image("/covers/front.jpeg", height: 100%)
  )

#let size1 = 2em
#let size2 = 3em
#set par(justify: false)//, spacing: 0em, leading: 0em)
#set text(fill: white, stretch: 75%, font: "Barlow") 

#let text1 = text(size: size1, [*Interview with \ Prof. Mustansir Barma*. pg 30])
#let text2 = text(size: size1, [*Astronomy-Themed \ Crossword*. pg 30])
#let text3 = align(center, text(size: size2, weight: "semibold", [Temple Langurs\ Master the Art of\ Begging]) + text(size: size2, [. pg 30]))
#let banner = grid(
  rows: (15em, 5em),
  align: horizon,
  image("/covers/bannerTextWhite.png"),
  h(6em) + text(size: size2, [*\#3 | May' 25*]) + h(2em) +
  text(size: size1, link("https://scicomm.iiserkol.ac.in")[scicomm.iiserkol.ac.in])
)

#v(4em)
#grid(
  columns: (1fr, 1fr),
  align: (center, center),
  text1,
  text2
)

#place(
  center + horizon,
  dx: 8em,
  dy: -20em,
  banner
)

#place(
  bottom + right,
  dx: -10em,
  dy: -25em,
  text3
)

//
// #set par(justify: false, leading: 0.3em)
// #set align(center)
// #set text(font: "Hero New")

// #image("/covers/debanuj.jpg", width: 100%)
// #place(
//   top + right,
//   box(width: 40em, inset: 1em, fill: rgb(255, 255, 255, 0), align(center, text(size: 3em, fill: white, weight: "semibold",[SECRET OF THE WINGS\ Nanostructures on a Dragonfly])))
// )
//
// #grid(
//   columns: (1fr, 1fr, 1fr),
//   align: (left + top, center + top, right + top),
//   box(inset: 1.5em, fill: rgb(255, 255, 255, 0),
//   align(left, text(size: 1.6em, fill: rgb(86, 86, 86), weight: "semibold", "Secret of the Wings: Nanostructures on a Dragonfly"))
//   ),
//   box(inset: 1.5em, fill: rgb(0, 0, 0, 0),
//   align(center, text(size: 1.6em, fill: rgb(86, 86, 86), weight: "semibold", [Interview With Prof. Mustansir Barma]))
//   ),
//   box(inset: 1.5em, fill: rgb(0, 0, 0, 0),
//   align(right, text(size: 1.6em, fill: rgb(86, 86, 86), weight: "semibold", "This Issue's Crossword is on Astronomy and Astrophysics"))
//   )
// )
// // #v(1em)
// #grid(
//   columns: (0.9fr, 1.4fr),
//   gutter: 2em,
//   align: (center, horizon + left),
//   v(5em) + text(size: 3em, weight: "bold", "#3 | May' 25") + linebreak() + v(5em) + align(center, text(size: 1.1em, weight: "semibold", fill: rgb(86, 86, 86), [InScight is a student-run science magazine\ by IISER Kolkata. | scicomm.iiserkol.ac.in])),
//   image("/images/bannerText.png", fit: "contain", width: 90%)
// )

#pagebreak()
