#import "/template-files/inscight-template.typ": *

#crossword(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  file: "/dataFiles/crossword.json",
  intro: [This issue's crossword is based on *Diseases and Biology*.],
  outlineDesc: " | astronomy and astrophysics",
  title: "Themed Crossword",
)
