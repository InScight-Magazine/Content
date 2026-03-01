#import "/template-files/inscight-template.typ": *

#let title = "India's Silent Architect of Modern Physics"
#let author = "Lipsamayee Mishra"
#let authorInfo = "*Lipsamayee Mishra* is a student in IISER Kolkata pursuing physics and maths. She is an art enthusiast who is passionate about illustrations and exploring new visual artforms."
#let authorAffiliations = "IISER Kolkata"
#let authorImage = "/authFaces/mishra.jpg"
#let coverImage = "/covers/mishra.jpg"
#let comic_images = ("mishra1.png", "mishra2.png", "mishra3.png",)

#comic(
  title: title,
  coverImage: coverImage,
  authorInfo: authorInfo,
  authorImage: authorImage,
  locator: "comic-mishra",
  comic_images: comic_images,
)
