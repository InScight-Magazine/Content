#import "/template-files/inscight-template.typ": *

#let gamesSummary = (
    ("Quiz questions drawn from basic and advanced mathematics.", "Maths Quiz"),
    ("The theme for this issue are the Nobel prizes.", "Themed Crossword | Nobel Prizes"),
    ("Link each term with the next, and complete the science word chain!", "Linked List"),
    ("Can you guess the names of these science universities and institutions?", "Who Am I? — Institutions of Science"),
  )

// #let coverData = for (a, t) in gamesSummary [
//     #text(font: heading-font, size: abstract-size, fill: author-color, weight: "bold", a)
//     #linebreak()
//     #text(size: abstract-size, fill: title-color, t)
//     #linebreak()
//     #linebreak()
//   ]

#let permalink = root-website + "issue" + yaml("/dataFiles/issueData.yml").at("number") + "/#games"
#let links = createLinks(url: permalink)
#halfCover(
  title: "Science Games", 
  coverImage: "/covers/nobel.jpg",
  coverData: gamesSummary,
  coverCaption: "This issue's crossword is based on the Nobel prizes.",
  outlined: false,
)
