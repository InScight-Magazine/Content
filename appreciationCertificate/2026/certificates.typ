#let data = yaml("certificateData.yml")
#let font1(t, s: 45pt) = return par(leading: 1.1em, text(size: s, font: "Kelvinch", t))
#let font2(t, s: 20pt) = return text(size: s, font: "Libra Serif Modern", t)
#set align(center)
#for (name, desc) in data.people.pairs() [
  #for type in (2,) [
    #set page(fill: none, width: 30cm, height: 21cm, background: image("background.png"), margin: (x: 1.8cm, y: 1.5cm))

    #if type == 1 [
      #v(-0.5em)
      #box(width: 50%, [
        #grid(
          columns: (1.5fr, 1fr),
          gutter: 3em,
          align: (right + horizon, left + horizon),
          image("darkBanner.svg", width: 70%) + v(-2em),
          image("iiserkol.png", width: 65%),
        )
      ])
      #v(1em)

      #font1([*CERTIFICATE*\ OF APPRECIATION])

      #v(1.5em)
    ] else [
      // #v(-0.5em)
      #box(width: 100%, [
        #grid(
          columns: (1.5fr, 1fr),
          gutter: 3em,
          align: (left + horizon, right + horizon),
          image("darkBanner.svg", width: 35%) + v(-2em),
          image("iiserkol.png", width: 33%),
        )
      ])
      #v(-0.5em)

      #font1([*CERTIFICATE*\ OF APPRECIATION])

      #v(1.5em)
    ]
    #font2([_This certificate is proudly presented to_])

    #v(0.3em)
    #font1([#name], s: 35pt)

    #v(3.0em)
    #box(font2(eval(desc, mode:"markup")), width: 80%)

    #v(1fr)

    #grid(
      columns: (1fr, 1fr, 1fr),
      align: center + top,
      gutter: 3%,
      [#line(length: 80%)#v(-1em) #font2(strong(upper(data.signees.at(0).at(0))), s:16pt)#v(-1em) #font2(data.signees.at(0).at(1), s:15.5pt)],
      [#line(length: 80%)#v(-1em) #font2(strong(upper(data.signees.at(1).at(0))), s:16pt)#v(-1em) #font2(data.signees.at(1).at(1), s:15.5pt)],
      [#line(length: 80%)#v(-1em) #font2(strong(upper(data.signees.at(2).at(0))), s:16pt)#v(-1em) #font2(data.signees.at(2).at(1), s:15.5pt)],
    )
    #v(1.0em)
  ]
]
