#import "/template-files/inscight-template.typ": *

#crossword(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  file: "/dataFiles/crossword.yaml",
  intro: [This issue's crossword is based on Nobel prize trivia.],
  title: "Themed Crossword --- Nobel prizes",
)
