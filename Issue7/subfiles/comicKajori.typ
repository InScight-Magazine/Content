#import "/template-files/inscight-template.typ": *

#let title = "Against All Odds -- The Man Who Brought IVF To India"
#let author = "Kajori Barman, Afreen Chowdhury"
#let authorInfo = "*Kajori* (right) is a student with curiosity in the sciences. Along with pursuing her interest in science, she also indulges in sketching and painting as hobbies. During the lockdown, she started getting into digital art and has since been drawing her favourite anime and comic characters. #linebreak() *Afreen* (left)  has always been very keen about nature, particularly biology. She has always loved reading novels and comics, and as someone who nerds on fiction, she wanted to try understanding how these stories are written by creating this comic with Kajori."
#let authorAffiliations = "IISER Kolkata"
#let authorImage = "/authFaces/kajori.jpg"
#let coverImage = "/covers/comic.svg"
#let comic_images = ("comic_2.jpg", "comic_3.jpg", "comic_4.jpg", "comic_5.jpg", "comic_6.jpg", "comic_7.jpg", "comic_8.jpg", "comic_9.jpg", )

#cover(
  title: title,
  coverImage: coverImage,
  locator: "comic-kajori",
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
