#import "template-files/inscight-template.typ": *
#import "dataFiles/issueConstants.typ": *
#set page(
    header: none,
    footer: none,
    margin: 0em,
  )

#set par(justify: false, leading: 0.3em)
#set align(center)
#set text(font: "Hero New")

#box(width: 100%, height: 65%, inset: 0em, outset: 0em, [
    #image("/covers/debanuj.jpg", width: 100%)
  ]
)
#grid(
  columns: (1fr, 1fr, 1fr),
  align: (left + top, center + top, right + top),
  box(inset: 1.5em, fill: rgb(255, 255, 255, 0),
  align(left, text(size: 1.6em, fill: rgb(86, 86, 86), weight: "semibold", "Secret of the Wings: Nanostructures on a Dragonfly"))
  ),
  box(inset: 1.5em, fill: rgb(0, 0, 0, 0),
  align(center, text(size: 1.6em, fill: rgb(86, 86, 86), weight: "semibold", [Interview With Prof. Mustansir Barma]))
  ),
  box(inset: 1.5em, fill: rgb(0, 0, 0, 0),
  align(right, text(size: 1.6em, fill: rgb(86, 86, 86), weight: "semibold", "This Issue's Crossword is on Astronomy and Astrophysics"))
  )
)
#v(1em)
#grid(
  columns: (0.9fr, 1.4fr),
  gutter: 2em,
  align: (horizon + right, horizon + left),
  text(size: 3em, weight: "bold", "#3 | May' 25"),
  image("/images/bannerText.png", fit: "contain", width: 90%)
)
#align(center, text(size: 1.7em, weight: "bold", [InScight is a volunteer-run science magazine\ hosted by IISER Kolkata. | scicomm.iiserkol.ac.in])
)
#pagebreak()
