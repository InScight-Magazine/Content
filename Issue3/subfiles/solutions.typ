#import "/template-files/inscight-template.typ": *
#import "/dataFiles/issueConstants.typ": *

#show: section.with(
  title: "The Last Page",
  numCols: 1,
)


#grid(
  columns: (1fr, 1fr, 0.8fr),
  gutter: 0.1fr,
  align: (left, left, left),
  [
    #let answers = yaml("/dataFiles/crossword.yml").Solution
    == Crossword
    #grid(
      columns: (1fr, 1fr),
      [
        === Across
        #for (index, answer) in answers.Across [
          #enum.item(int(index))[#answer]
        ]
      ],
      [
        === Down
        #for (index, answer) in answers.Down [
          #enum.item(int(index))[#answer]
        ]
      ]
    )
  ],
  [
    == Quiz
    #let answers = yaml("/dataFiles/quiz.yml").answers
    #let options = yaml("/dataFiles/quiz.yml").options
    #for (index, answer) in answers.enumerate() [
      + #options.at(index).at(answer - 1)
    ]
  ],
  [
    == Linked List
    #let answers = yaml( "/dataFiles/linkedList.yaml").answers
    #for answer in answers [
      + #answer
    ]
  ]
)
