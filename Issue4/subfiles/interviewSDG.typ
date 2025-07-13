#import "/template-files/inscight-template.typ": *

#let title = "Through The Eyes Of The Founding Director: Interview with Prof. Dattagupta"
#let file = "/dataFiles/interviewSDG.txt"
#let group1 = ("SS:",)
#let group2 = "SDG:"
#let authors = ("Swarnendu Saha",)
#let affiliations = ("IISER Kolkata",)
#let abstract = "*Ever wondered how a reluctant chemistry student becomes a gravitational wave pioneer?* Join Dr. Sanjit Mitra as he traces his accidental journey from Kolkata’s B.Sc. classrooms to playing a leading role in India’s endeavour in the cosmic detective work with LIGO, where mirrors detect ripples in spacetime thinner than a proton!"
#let coverImage = "/covers/SDG.jpg"
#let coverCaption = "BS-MS graduate Swarnendu Saha with Prof. Dattagupta at the IISER Kolkata campus, after the interview."
#let sideImage = "/images/SDG.jpg"
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
  sideImageFraction: 40%,
)
