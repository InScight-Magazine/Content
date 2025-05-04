#import "/template-files/inscight-template.typ": *
#import "/dataFiles/issueConstants.typ": *

#let title = "In Conversation with Prof. Mustansir Barma"

#interview(
  file: "/dataFiles/interviewMB.txt",
  group1: ("SS:",), 
  group2: "MB:",
  title: title,
  authors: ("Swarnendu Saha, Manish Behera",),
  authorAffiliations: ("IISER Kolkata",),
  abstract: "What sparks a lifelong passion for physics—and what does it take to lead one of India’s premier scientific institutions? In this rich and wide-ranging conversation, Prof. Mustansir Barma opens up about his journey from a curious schoolboy writing letters to textbook authors to becoming a celebrated physicist and the founding director of TIFR Hyderabad. He reflects on the essence of randomness, the beauty of phase transitions, the art of asking questions, and the quiet power of effective leadership.",
  coverImage: "/covers/MB2Cropped.jpeg",
  sideImage: "/images/MBFace.jpg",
  sideImageFraction: 40%,
  header-global: header-global, 
)
