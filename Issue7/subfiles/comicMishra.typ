#import "/template-files/inscight-template.typ": *

#let title = "India's Silent Architect of Modern Physics"
#let author = "Lipsamayee Mishra"
#let authorInfo = "*Lipsamayee Mishra* is a student in IISER Kolkata pursuing physics and maths. She is an art enthusiast who is passionate about illustrations and exploring new visual artforms."
#let authorAffiliations = "IISER Kolkata"
#let authorImage = "/authFaces/mishra.jpg"
#let coverImage = "/covers/mishra.svg"
#let comic_images = ("mishra1.png", "mishra2.png", "mishra3.png",)

#cover(
  title: title,
  coverImage: coverImage,
  locator: "comic-mishra",
)


#pagebreak()
#for img in comic_images [
  #set page(
      background: image("/images/" + img, width: 95%),
      header: none,
      footer: none,
  )
  #pagebreak()
]

#set page(background: none)
#show: default.with(
  issueDetails: yaml("/dataFiles/issueData.yml"),
)
#align(center,
block(width: 50%,
auth-profile(authorInfo: authorInfo, authorImage: authorImage)
+ v(1fr)
))
