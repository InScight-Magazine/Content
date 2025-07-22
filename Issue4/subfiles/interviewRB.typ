#import "/template-files/inscight-template.typ": *

#let title = "From IISER Kolkata Transit Campus to Tel Aviv: Rajarshi Bhattacharyya's Academic Voyage"
#let file = "/dataFiles/interviewRB.txt"
#let group1 = ("SS:",)
#let group2 = "RB:"
#let authors = ("Swarnendu Saha",)
#let affiliations = ("IISER Kolkata",)
#let abstract = "*“Just try to self-teach yourself the thought process of training yourself to have an intelligent way of approaching any problem, as intelligently as possible.”* says Rajarshi Bhattacharyya, experimental physicist and alumnus of IISER Kolkata (BS-MS, 2015), as he reflects on  his academic journey from IISER to a PhD at the Weizmann Institute specialising in mesoscopic transport physics and quantum hall systems. He further dives into the hostel life during IISER’s campus transition, compares global PhD systems, and urges students to value clear thinking over career labels."
#let coverImage = "/covers/RBcover.jpeg"
#let sideImage = "/images/RBface.jpg"
#let received = (day: 8, month: 6, year: 2025)

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
  sideImageFraction: 25%,
)
