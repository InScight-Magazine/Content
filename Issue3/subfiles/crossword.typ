#import "/template-files/inscight-template.typ": *
#import "/dataFiles/issueConstants.typ": *

#crossword(
  file: "/dataFiles/crossword.yml",
  crosswordImage: "/images/crossword.svg",
  intro: [This issue's crossword is drawn from *astronomy* and *astrophysics*.],
  outlineDesc: " | astronomy and astrophysics",
  title: "Themed Crossword",
  header-global: header-global, 
  crosswordWidth: 70%,
  leftColWidth: 1.1fr,
)
