#import "/template-files/inscight-template.typ": *

#let title = "Science, Systems, Success: Interview with a Distinguished Scientist"
#let file = "/dataFiles/interviewAKT.txt"
#let group1 = ("SS:",)
#let group2 = "AKT:"
#let authors = ("Swarnendu Saha",)
#let affiliations = ("IISER Kolkata",)
#let abstract = "From the evolution of Science education in India, to the role of premier institutes, and the changing dynamics of student choices across disciplines, Prof A.K. Tyagi, dean of HBNI shares his view with our member Swarnendu Saha on India’s growing global scientific workforce, and how institutions like BARC function differently from universities. The conversation also touches on research culture, opportunities for young students, regional representation, and broader issues such as employability, educational changes, and student politics."
#let coverImage = "/covers/AKT.jpg"
#let coverCaption = ""
#let sideImage = "/images/AKT_authface.jpg"
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
  coverHeight: 40%,
  sideImageFraction: 35%,
)
