#import "/template-files/inscight-template.typ": *

#let title = "With Prof. Nagaraj Balasubramanian: On Cell Biology, Cancer, and the Joy of Doing Science"
#let file = "/dataFiles/Nagaraj.txt"
#let group1 = ("SC:",)
#let group2 = "NB:"
#let authors = ("Sharanya Chatterjee",)
#let affiliations = ("IISER Kolkata",)
#let abstract = [*Prof. Nagaraj Balasubramanian* (IISER Pune) talks about embracing uncertainty, the beauty of cell biology, and why enjoying the process matters more than rigid timelines. From cancer research to the rise of AI in science, he shares insights that remind us discovery is as much about curiosity as it is about perseverance.]
#let coverImage = "/covers/nagaraj.jpeg"
#let coverCaption = "Cells seen under microscope. Photo by Fayette Reynolds M.S. Prof. Balasubramaniam’s research focuses on cell adhesion, trafficking, cell migration and growth."
#let sideImage = "/images/NB.jpg"
#let received = (day: 8, month: 11, year: 2024)

#interview(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  file: file,
  group1: group1,
  group2: group2,
  title: title,
  authors: authors,
  authorAffiliations: affiliations,
  abstract: abstract,
  coverImage: coverImage,
  coverCaption: coverCaption,
  sideImage: sideImage,
  sideImageFraction: 30%,
)
