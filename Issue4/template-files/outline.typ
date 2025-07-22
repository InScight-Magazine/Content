#import "constants.typ": *
#import "helpers.typ": *
#import "layouts.typ": *

#let miniOutline(minPage, maxPage, classes: none, split: 99999) = {
  if "int" not in classes {
    classes.int = ()
  } 
  if "cas" not in classes {
    classes.cas = ()
  } 
  if "meta" not in classes {
    classes.meta = ()
  } 

  show outline.entry: set block(below: 1.5em)
  show outline.entry: it => {
    if int(it.page().text) == split {
      colbreak()
    }
    let col = header-bg-color
    if classes.int.contains(int(it.page().text)) {
      col = yellow
    } else if classes.cas.contains(int(it.page().text)) {
      col = blue
    } else if classes.meta.contains(int(it.page().text)){
      col = black
    }
    text(weight: contents-weight)[
      #grid(
        columns: (20pt,1em,1fr),
        align: (left, left),
        gutter: 3pt,
        text(weight: "bold")[#link(
          (page: int(it.page().text), x: 0pt, y: 0pt),text(size: outline-num-size, it.page())
        )],
        line(length: 2em, angle: 90deg, stroke: 0.3em + col),
        link(
          (page: int(it.page().text), x: 0pt, y: 0pt), 
          v(-0.5em) + it.body()
        ),
      )
  ]
  v(1.5em)
  }

  show outline.entry: it => {
    if int(it.page().text) >= minPage and int(it.page().text) <= maxPage {
      it
    }
  }

  outline(title: none, depth: 1)
}

#let fullOutline(
  issueDetails: none,
  classes: none,
) = {

    show: section.with(
      issueDetails: issueDetails,
      title: "In This Issue", 
      numCols: 2,
      locator: "outline",
    )

    miniOutline(0, 1000, split: 49, classes: classes)
}
