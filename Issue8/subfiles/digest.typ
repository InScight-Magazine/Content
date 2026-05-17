#import "/template-files/inscight-template.typ": *

#insightDigest(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  file: "/dataFiles/digest.yaml",
  heights: (61%, 69%, 52%, 54%),
  widths: (100%, 50%, 100%, 100%),
  title: "Insight Digest -- Curated Science News",
  intro: "Summarising The Frontiers In Research",
  abstract: ("Fresh highlights from the frontiers of science",),
  coverImage: "/covers/digest.png",
)
