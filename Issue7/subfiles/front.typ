#import "/template-files/inscight-template.typ": *
#set page(
    header: none,
    footer: none,
    margin: 0em,
    background: image("/covers/mishraRaw.svg", height: 100%, width: 100%, fit: "cover")
)

#set text(fill: rgb("000"))
#set par(leading: 0.15em, spacing: 0.25em, justify: false)
#{
set text(font: "Neuton SC")
place(
  top +  center,
  dy: 5em,
  image("/covers/lightBanner.svg", width: 70%)
)

place(
  top +  center,
  dx: -2em,
  dy: 20em,
  align(left, text(size: 2.5em, weight: "bold", [The IISER Kolkata Science Magazine]) +
  v(2em) +
  text(size: 2.5em, weight: "bold", [\##yaml("/dataFiles/issueData.yml").number | #yaml("/dataFiles/issueData.yml").time])),
)
}


#link(<article-anup-probability>)[
  #set text(font: "Neuton", size: 2.4em, weight: "bold")
  #place(
  right + horizon,
  dx: -3em,
  dy: -5em,
  box(width: 200pt,
    align(left, [#text(fill: maroon, [Patterns In Primes Via Probability]) #parbreak() #text(fill: black, [Dixit \& Pathak])])
  )
)
]

#link(<article-rahul-yaghi>)[
  #set text(font: "Neuton", size: 2.4em, weight: "bold")
  #place(
  right + horizon,
  dx: -3em,
  dy: 4em,
  box(width: 200pt,
    align(left, [My Scientific Journey With Nobel Laureate Omar Yaghi #parbreak() #text(fill: white, [Prof. Rahul Banerjee])])
  )
)
]


#link(<comic-kajori>)[
  #set text(font: "Neuton", size: 2.4em, weight: "bold")
  #place(
  right + bottom,
  dx: -2em,
  dy: -4em,
  box(width: 230pt,
    align(left, text(fill: white, [Against All Odds: The Man Who Brought IVF To India]) + parbreak() + text(fill: yellow, [comic by Kajori \& Afreen]))
  )
)
]

#link(<comic-mishra>)[
  #set text(font: "Neuton", size: 2em, weight: "bold")
  #place(
  left + bottom,
  dx: 1em,
  dy: -2em,
  box(width: 200pt,
    align(left, text(fill: white, [*art by\ Lipsamayee\ Mishra*])))
  )
)
]

#pagebreak()
