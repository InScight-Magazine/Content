#import "/template-files/inscight-template.typ": *

#let issueDetails = yaml("/dataFiles/issueData.yml")
#let title =  "The Last Page"
#let permalinkSuffix = "solutions"
#let permalink = createPermalink(issueNum: issueDetails.at("number"), permalinkSuffix: permalinkSuffix)
#let links = createLinks(url: permalink)
#set page(header: createTitleHeader(title: title, issueDetails: issueDetails, shortLink: links.at("short")))

#nonCoverTitle(
    title: title, 
    locator: permalinkSuffix,
)

#set par(justify: false)
#grid(
  columns: (1.5fr, 0.8fr, 0.8fr),
  gutter: 4em,
  align: left,
  [
    #let answers = crossword_solution("/dataFiles/crossword.toml")
    == Crossword
    #grid(
      columns: (1fr, 1fr),
      gutter: 2em,
      [
        === Across
        #for (index, answer) in answers.a [
          #enum.item(int(index))[#upper(answer)]

        ]
      ],
      [
        === Down
        #for (index, answer) in answers.d [
          #enum.item(int(index))[#upper(answer)]

        ]
      ]
    )
  ],
  [
    == Quiz
    #let data = yaml("/dataFiles/quiz.yml")
    #let counter = 1
    #while str(counter) in data {
      let q = data.at(str(counter))
      [+ #q.o.at(q.a - 1)]
      counter += 1
    }
  ],

  [
== Linked List
    #let answers = yaml( "/dataFiles/linkedList.yml").answers
    #for answer in answers [
      + #answer

    ]
  ],

  [
    == Who Am I?
    #let data = toml("/dataFiles/whoami.toml").questions
    #for q in data [
      + #q.answer

    ]
  ],
)


