#import "/template-files/inscight-template.typ": *

#let title = "Interview of Prof. Ram Murty and Prof. Kumar Murty"
#let file = "/dataFiles/interviewRMKM.txt"
#let group1 = ("Q:",)
#let group2 = ("RM:", "KM:")
#let authors = ("Abhisruta Maity", "Shirshendu Chowdhury")
#let affiliations = ("IISER Kolkata", "IISER Kolkata")
#let authorInfo = "*Profs. M. Ram Murty and V. Kumar Murty* are fellows of the Royal Society of Canada. The former is the A. V. Douglas Distinguished University Professor & Queen's Research Chair at Queen's University in Canada. The latter is the Director of the  Lodha Mathematical Sciences Institute in Mumbai while also a Professor of Mathematics at University of Toronto in Canada. Prof. Ram Murty was an adjunct professor at IISER Kolkata."
#let abstract = "Two distinguished mathematicians reflect on the origins of their curiosity, the mentors who shaped their paths, and the philosophy that sustained their research journeys. From self-learning calculus in high school to mastering seminal papers and embracing collaboration, they reveal the human side of mathematical discovery. This conversation offers rare insights into creativity, perseverance, and the mindset required to thrive in mathematics."
#let coverImage = "/covers/murty.svg"
#let authorImage = "/authFaces/coverSideRMKM.jpeg"
#let received = (day: 12, month: 12, year: 2025)

#interview(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  file: file,
  group1: group1,
  group2: group2,
  title: title,
  interviewers: authors,
  interviewerAffiliations: affiliations,
  abstract: abstract,
  coverImage: coverImage,
  received: received,
  interviewee: "Ram-Kumar-Murty",
  intervieweeInfo: authorInfo,
  intervieweeImage: authorImage,
)
