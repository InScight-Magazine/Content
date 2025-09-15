#import "/template-files/inscight-template.typ": *
#set page(
    header: none,
    footer: none,
    margin: 0em,
    background: image("/covers/front.png", height: 100%, width: 100%, fit: "cover")
)

#set text(fill: rgb("ddd"))
#set par(leading: 0.15em, spacing: 0.25em, justify: false)
#{
set text(font: "Neuton SC")
place(
  center,
  dy: 6em,
  image("/covers/lightBanner.svg", width: 70%) + 
  grid(
    columns: (auto, auto),
    align: center + horizon,
    gutter: 5em,
    text(size: 2.3em, weight: "bold", [The IISER Kolkata Science Magazine]),
    text(size: 2.3em, weight: "bold", [\##yaml("/dataFiles/issueData.yml").number | #yaml("/dataFiles/issueData.yml").time]),
  )
)
}

#link(<Chandrima-Easier>)[
  #set text(font: "Neuton", size: 2.5em, weight: "bold")
  #place(
  center + horizon,
  dy: 8em,
  box(width: 100% - 3em,
    [CELL DEATH MAKES \ LIVING EASIER #parbreak() #text(fill: orange, [Chandrima Shaha])],
  )
)
]

#{
set text(font: "Neuton", size: 1.4em, weight: "bold")
place(
  center + bottom,
  dy: -2em,
  box(width: 100% - 3em,
  grid(
    columns: (1fr, auto, 1.2fr, auto, 1fr),
    align: (left + horizon, center + horizon, center + horizon, center + horizon, right + horizon),
    // stroke: (x,y) => if x < 2 { (right: 0.2em + white) },
    gutter: 0.5em,
    link(<Suman-Curiosity>)[AT THE INTERSECTION OF PHYSICS AND BIOLOGY #parbreak() #text(fill: orange, [Tamal Das on Forces \& Cells])],
    line(angle: 90deg, length: 5em, stroke: 0.2em + white),
    link(<Swarnendu-InScight>)[FROM CANCER RESEARCH TO PARADIGM SHIFTS#parbreak() #text(fill: orange, [Interview with Sushanta Roychoudhury])],
    line(angle: 90deg, length: 5em, stroke: 0.2em + white),
    link(<Swarnendu-Curiosity>)[WHY THERAPIES FAIL?#parbreak() #text(fill: orange, [Ofer Reizes on cancer, collaboration, and curiosity])],
  )
  )
)
}

// #place(
//   center + bottom,
//   dy: -3em,
//   text(size: 1.6em, weight: "bold", [\[#link("https://scicomm.iiserkol.ac.in")[scicomm.iiserkol.ac.in]\]]),
// )

#pagebreak()
