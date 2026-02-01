#import "/template-files/inscight-template.typ": *

#let title = "From Numbers to Narratives: An Insightful Conversation with Ram and Kumar Murty"
#let file = "/dataFiles/interviewRMKM.txt"
#let group1 = ("Q:",)
#let group2 = ("RM:", "KM:")
#let authors = ("Abhisruta Maity", "Shirshendu Chowdhury")
#let affiliations = ("IISER Kolkata", "IISER Kolkata")
#let abstract = lorem(50)
#let coverImage = "/covers/murty.svg"
#let coverCaption = "Ram Murty and Kumar Murty at CRM Montreal with \ R. Raghunathan, S. Adhikari, M. Nair & C.S. Rajan, 1994"
#let sideImage = "/images/coverSideRMKM.jpeg"
#let received = (day: 12, month: 12, year: 2025)

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
  coverHeight: 45%,
  sideImage: sideImage,
  sideImageFraction: 40%,
  received: received,
)
