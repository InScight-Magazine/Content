#import "/template-files/inscight-template.typ": *

#let title = "From Cancer Research to Paradigm Shifts: Dr. Sushanta Roychoudhury With InScight"
#let file = "/dataFiles/interviewSR.txt"
#let group1 = ("SS:",)
#let group2 = "SR:"
#let authors = ("Swarnendu Saha",)
#let affiliations = ("IISER Kolkata",)
#let abstract = "From the Chittaranjan National Cancer Research Institute in Kolkata to postdoctoral work at a university in the USA, Prof. Sushanta Roychoudhury’s career has spanned multiple laboratories, research fields, and continents. Visiting IISER Kolkata as a panelist for BAW 2025, Prof. Roychoudhury kindly took some time to speak with InScight."
#let coverImage = "/covers/baw_2025.jpg"
#let coverCaption = ""
#let sideImage = "/images/SR.jpg"
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
  sideImageFraction: 29%,
)
