#import "/template-files/inscight-template.typ": *

#insightDigest(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  file: "/dataFiles/digest.yaml",
  heights: (56%, 69%, 52%, 54%),
  widths: (98%, 50%, 100%, 100%),
  title: "Insight Digest -- Curated Science News",
  intro: "Summarising The Frontiers In Research",
  abstract: ("Fresh highlights from the frontiers of science",),
  coverImage: "/covers/digest.svg",
)
