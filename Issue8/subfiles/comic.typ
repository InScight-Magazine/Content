#import "/template-files/inscight-template.typ": *

#let title = "What Lies Beneath the Leaf"
#let author = "Nandita Sriram"
#let authorInfo = ("Hi! I’m *Nandita Sriram*, a 3rd-year BS-MS student majoring in Biology with a strong interest in the intersection of science and art. I enjoy using illustration and visual storytelling to explore scientific ideas through creative and imaginative perspectives. My work is inspired by biology, science fiction, retro media aesthetics, and experimental ways of communicating through art.")
#let authorAffiliations = "IISER Kolkata"
#let authorImage = "/authFaces/comic.jpeg"
#let coverImage = "/covers/comic.svg"
#let comic_images = ("comic1.png", "comic2.png", "comic3.png",)

#comic(
  title: title,
  coverImage: coverImage,
  authorInfo: authorInfo,
  authorImage: authorImage,
  locator: "comic",
  comic_images: comic_images,
)
