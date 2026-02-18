#import "/template-files/inscight-template.typ": *

#let title = "Seeing the World Mathematically: A Conversation with Prof. S. D. Adhikari"  

#let file = "/dataFiles/intSDA.txt" 

#let group1 = ("SS:",) 
#let group2 = ("SDA:",)
#let authors = ("Swarnendu Saha",)
#let affiliations = ("IISER Kolkata",)
#let abstract = "In this conversation with our representative, Prof. Sukumar Das Adhikari connects number theory, combinatorics, physics, and Indian philosophy to argue that mathematical structures emerge from human cognition as much as from the external world. The interview offers fresh insights into how abstract ideas—pursued for beauty alone—later become foundational to physics, computing, and AI, while also revealing rarely discussed personal experiences with mentors, global collaborations, and unsolved problems."
#let coverImage = "/covers/SDA.jpg"
#let coverCaption = "Dr. Sukumar Das Adhikari in his workspace—calmly presiding over ideas, equations, and insight."
#let sideImage = "/authFaces/SDA.jpeg"
#let received = (day: 7, month: 01, year: 2026)

#interview(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  file: file,
  group1: group1,
  group2: group2,
  title: title,
  abstract: abstract,
  coverImage: coverImage,
  interviewee: "S-D-Adhikari",
  interviewers: authors,
  interviewerAffiliations: affiliations,
  intervieweeInfo: lorem(20),
  intervieweeImage: sideImage,
  received: received,
)
