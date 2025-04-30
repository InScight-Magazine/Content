#import "/template-files/inscight-template.typ": *
#import "/dataFiles/issueConstants.typ": *

#let file = "/dataFiles/interviewCSS.txt"
#let group1 = ("SS:",)
#let group2 = "CSS:"
#let title = "In Conversation with Dr. Chandra Shekhar Sharma"
#let authors = ("Swarnendu Saha (IISER Kolkata)",)
#let abstract = "*What does it take to become a professor at an IIT before even defending your PhD?* In this captivating conversation, Prof. Chandra Shekhar Sharma from IIT Hyderabad shares his unconventional academic journey, the evolving landscape of Indian higher education, and the pivotal role of young scientists in shaping research and policy. From navigating academia without a postdoc to leading global scientific communities, his insights challenge traditional career trajectories. He also unpacks how IIT Hyderabad’s innovative curriculum is redefining interdisciplinary education and fostering entrepreneurship."
#let coverImage = "/covers/CSSCover.jpg"
#let sideImage = "/covers/CSS_cover_side.jpg"
#let date = "2025-03-17"

#interview(
  file: file,
  group1: group1,
  group2: group2,
  title: title,
  authors: authors,
  abstract: abstract,
  coverImage: coverImage,
  sideImage: sideImage,
  sideImageFraction: 40%,
  header-global: header-global, 
)
