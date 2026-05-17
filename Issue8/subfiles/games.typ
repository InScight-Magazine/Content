#import "/template-files/inscight-template.typ": *

#let gamesSummary = (
    ("Quiz questions drawn from popular works of science fiction.", "SciFi Quiz"),
    ("The theme for this issue is Science of Medieval India.", "Themed Crossword"),
    ("Link each term with the next, and complete the science word chain!", "Linked List"),
  )

#let permalink = root-website + "issue" + yaml("/dataFiles/issueData.yml").at("number") + "/#games"
#let links = createLinks(url: permalink)
#halfCover(
  title: "Science Games", 
  coverImage: "/covers/games.jpeg",
  coverData: gamesSummary,
  coverCaption: "This issue's quiz is based on popular works of science fiction.",
  outlined: false,
)
