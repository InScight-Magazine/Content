#import "/template-files/inscight-template.typ": *

#let title = "From ISI to Princeton and Back: Conversation with Ritabrata Munshi"
#let file = "/dataFiles/interviewRM.txt"
#let group1 = ("SS:",)
#let group2 = ("RM:",)
#let authors = ("Swarnendu Saha",)
#let affiliations = ("IISER Kolkata",)
#let abstract = "In this wide-ranging conversation, Prof. Munshi reflects on a life shaped by mathematics—from early fascination with symbols to research at Princeton and a return to ISI Kolkata as faculty. He discusses number theory as an artistic pursuit, the changing philosophy of academic institutions, and why mathematics survives when fashionable disciplines fade. The interview offers rare insight into mathematics as both a personal vocation and a centuries-old human enterprise."
#let coverImage = "/covers/RM.svg"
#let authorInfo = "*Prof. Munshi* is a mathematician specialising in number theory. He was awarded the Shanti Swarup Bhatnagar Prize for Science and Technology for the year 2015 in mathematical science category. On 8 November 2018 he was awarded the ICTP Ramanujan Prize in a ceremony held at the Budinich Lecture Hall, ICTP. He is affiliated to Tata Institute of Fundamental Research, Mumbai, and the Indian Statistical Institute, Kolkata"
#let received = (day: 10, month: 12, year: 2025)
#let authorImage = "/authFaces/RM.jpg"

#interview(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  file: file,
  group1: group1,
  group2: group2,
  title: title,
  interviewee: "Ritabrata-Munshi",
  interviewers: authors,
  interviewerAffiliations: affiliations,
  abstract: abstract,
  coverImage: coverImage,
  received: received,
  intervieweeInfo: authorInfo,
  intervieweeImage: authorImage,
)
