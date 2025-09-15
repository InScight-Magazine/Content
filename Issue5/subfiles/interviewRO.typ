#import "/template-files/inscight-template.typ": *

#let title = "Why Therapies Fail: Prof. Ofer Reizes on Cancer, Collaboration, Curiosity"
#let file = "/dataFiles/interviewRO.txt"
#let group1 = ("SS:",)
#let group2 = "OR:"
#let authors = ("Swarnendu Saha",)
#let affiliations = ("IISER Kolkata",)
#let abstract = [Swarnendu Saha interviews *Prof. Ofer Reizes* of Cleveland Clinic of the United States to discuss American academia, his current focus on women’s cancers and therapy resistance, and the vital role of collaboration between scientists and clinicians.]
#let coverImage = "/covers/ofer.jpeg"
#let coverCaption = ""
#let sideImage = "/images/ofer.jpeg"
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
  sideImage: sideImage,
  coverCaption: "Prof. Reizes (seated left) at The Ohio State University NSF I-Corps program.",
  sideImageFraction: 29%,
)
