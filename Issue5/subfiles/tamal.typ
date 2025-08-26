#import "/template-files/inscight-template.typ": *

#let title = "At the Intersection of Physics and Biology: Tamal Das on Forces, Cells, and Curiosity"
#let file = "/dataFiles/tamal.txt"
#let group1 = ("SH:",)
#let group2 = "TD:"
#let authors = ("Suman Halder",)
#let affiliations = ("IISER Kolkata",)
#let abstract = [*Dr. Tamal Das* shares his journey from Howrah Zilla School to Tata Institute of Fundamental Research - Hyderabad. He discusses his laboratory’s focus on the collective dynamics of epithelial cells, their applications in cancer prevention and wound healing, and the importance of interdisciplinary collaboration, with our correspondent Suman Halder.]
#let coverImage = "/covers/tamal.png"
#let coverCaption = "Epithelial cells work together like a neighborhood watch, sensing when one of their neighbors turns abnormal and pushing it out before it can cause harm. This captures the essence of homeostasis that constitutes one aspect of Prof. Das’s research."
#let sideImage = "/images/tamal.jpg"
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
