#import "/template-files/inscight-template.typ": *

#crossword(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  file: "/dataFiles/crossword.yaml",
  intro: [This issue's crossword is based on the Nobel prizes.],
  outlineDesc: " | Women in Science",
  title: "Themed Crossword | Nobel Prizes",
)
