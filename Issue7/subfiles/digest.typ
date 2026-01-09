#import "/template-files/inscight-template.typ": *

#insightDigest(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  file: "/dataFiles/digest.yaml",
  heights: (56%, 69%, 52%, 54%),
  widths: (98%, 50%, 100%, 100%),
  title: "Insight Digest",
  intro: "Summarising The Frontiers In Research",
  abstract: ("Fresh highlights from the frontiers of science",),
  coverImage: "/covers/digest.svg",
  coverCaption: "One of the challenge towards building quantum computers is in operating qubits\u{2014}the basic units of quantum information\u2014in a way that is both fast and stable. A recent paper published in Nature Physics addresses this issue for a promising type of qubit known as a hole spin qubit, offering new insight into how these systems can be controlled more reliably.",
)
