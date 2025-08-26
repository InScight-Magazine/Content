#import "/template-files/inscight-template.typ": *

#let title = "Meet Prof. Sanjit Mitra, the Science Spokesperson of LIGO India"
#let file = "/dataFiles/interviewSM.txt"
#let group1 = ("SS:",)
#let group2 = "SM:"
#let authors = ("Swarnendu Saha",)
#let affiliations = ("IISER Kolkata",)
#let abstract = "*Ever wondered how a reluctant chemistry student becomes a gravitational wave pioneer?* Join Dr. Sanjit Mitra as he traces his accidental journey from Kolkata’s B.Sc. classrooms to playing a leading role in India’s endeavour in the cosmic detective work with LIGO, where mirrors detect ripples in spacetime thinner than a proton! He’ll decode why three global detectors are essential to pinpoint colliding black holes and how LIGO-India could soon become one of the main players in this scene. But brace yourself: he also questions if our education system stifles more thinkers than it fuels—what do you think?"
#let coverImage = "/covers/SMzeroshadowday.jpg"
#let coverCaption = "Prof. Mitra explains the phenomenon of zero shadow day to the introductory summer school students at the Inter-University Centre for Astronomy & Astrophysics (IUCAA). [Source: LIGO India Facebook page]"
#let sideImage = "/images/SMFace.jpg"
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
  sideImageFraction: 35%,
)
