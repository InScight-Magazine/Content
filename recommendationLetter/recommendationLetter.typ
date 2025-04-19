#set text(font: "Lato", size: 11pt)
#set page(
  paper: "a4",
  margin: (top: 14em, bottom: 8em, rest: 6em),
  header: rect(width: 100%, stroke: (bottom: 0.3em + rgb("bd2033")),
  grid(
    columns: (1fr, auto, 1fr),
    gutter: 2em,
    align: (left + bottom, horizon, right + bottom),
    image("logo.png"),
    text(fill: rgb("222"), weight: "semibold", [*InScight* - A Peek Into Science,\ Indian Institute of Science Education and Research Kolkata,\ Mohanpur, Nadia - 741 246, West Bengal, India\ (_Established by the Ministry of Human Resource Development_)]),
    image("IISER-K_Logo.png"),
  )
  + v(1em)
  ),
  footer: rect(width: 100%, stroke: (top: 0.3em + rgb("bd2033")),
  v(1em) + 
  text(fill: rgb("222"), weight: "semibold", 
  grid(
    columns: (1fr,auto,1fr),
    align: (left + horizon, center + horizon, right + horizon),
    [*Email*: #link("mailto:scicomm@iiserkol.ac.in")[scicomm\@iiserkol.ac.in]],
    image("banner.png", height: 50%),
    [*Website*: #link("scicomm.iiserkol.ac.in")],
  )
  )
)
)
#v(-2em)

#align(right, [*Dated*: April 18, 2025])

#set par(justify: true)
#set text(fill: rgb("000"), weight: "regular")

#upper[*Sai Kishore*] was a member of the website management unit of Cogito137, and
eventually went on to head the unit. During his tenure, he maintained and
updated the official website of Cogito137, alongside delegating responsibilities
and providing critical feedback regarding various technical proceedings of the
platform. He additionally assisted with live streaming of online events over the
platform’s YouTube channel and provided technical assistance during the
conduction of online events by the platform. He proved to be an effective team
player and completed his duties with due diligence.

Best regards,
#v(3em)
*Swarnendu Saha*\
Chief Editor\
InScight

#v(3em)
#grid(
  columns: (1fr, 1fr, 1fr),
  align: (left + bottom, center + bottom, right + bottom),
  rows: 4em,
  [*Prof. Anindita Bhadra* \ Professor-In-charge\ InScight],
  [*Prof. Subhajit Bandyopadhyay* \ Professor-In-charge\ InScight],
  [*Dr. Somnath Basu* \ Professor-In-charge\ InScight],
)
