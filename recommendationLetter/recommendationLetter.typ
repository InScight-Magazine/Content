#set text(font: "Lato", size: 11pt)
#set page(
  paper: "a4",
  margin: (top: 14em, bottom: 8em, rest: 4em),
  header: rect(width: 100%, stroke: (bottom: 0.3em + rgb("bd2033")),
  grid(
    columns: (1fr, auto, 1fr),
    gutter: 2em,
    align: (left + bottom, bottom, right + bottom),
    image("logo.png"),
    text(fill: rgb("222"), weight: "semibold", [*InScight* - A Peek Into Science,\ Indian Institute of Science Education and Research Kolkata,\ Mohanpur, Nadia - 741 246, West Bengal, India\ (_(An Autonomous Institute established by Ministry of Education, Govt. of India_)]),
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
#v(-1em)

#align(center, [= Letter of Appreciation])

#v(1em)
#align(right, [*Dated*: May 7, 2025])
#v(1em)

#set par(justify: true)
#set text(fill: rgb("000"), weight: "regular")

#upper[*Abhirup Mukherjee*] was a member of the graphical design and website management unit of *InScight*, the science magazine of IISER Kolkata. During the first year of the operation of the magazine, Abhirup designed the official website for the magazine in its entirety. Along with other members of the unit, he was responsible for routine maintainence of the website as well as updating the website regularly with HTML versions of various content that appeared in the magazine.

Abhirup was also deeply involved in constructing the original layout and design of the magazine (with inputs from the team, of course), as well as revisions of the design in subsequent issues. On a technical note, he implemented and tested the use of a new typesetting system (_typst_) for the magazine which increased design consistency tremendously over the previous system (_inkscape_) and doubled their efficiency. He has always been enthusiastic about making the magazine as best as it can be, and carried out his roles to the best of his abilities.

#v(1em)
Best regards,\
_Professors-In-Charge_,\
InScight

#v(4em)
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.1em,
  [*Prof. Anindita Bhadra* \ Dpt. of Biological Sciences,\ IISER Kolkata],
  [*Prof. Subhajit Bandyopadhyay* \ Dpt. of Chemical Sciences,\ IISER Kolkata],
  [*Prof. Somnath Basu* \ Dpt. of Mathematical Sciences,\ IISER Kolkata],
)

// #v(3em)
// *Prof. Anindita Bhadra* \ Department of Biological Sciences,\ IISER Kolkata \
//
// #v(3em)
// *Prof. Subhajit Bandyopadhyay* \ Department of Chemical Sciences,\ IISER Kolkata \
//
// #v(3em)
// *Prof. Somnath Basu* \ Department of Mathematical Sciences,\ IISER Kolkata \
