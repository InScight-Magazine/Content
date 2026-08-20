#import "template-files/inscight-template.typ": *

#show: default.with(
  issueDetails: yaml("/dataFiles/issueData.yml"),
)

#include "/subfiles/front.typ"
#include "/subfiles/blank.typ"
#include "/subfiles/foreword.typ"
#include "/subfiles/editor.typ"
#include "/subfiles/outline.typ"
#include "/subfiles/sridip.typ"
#include "/subfiles/kayal.typ"
#include "/subfiles/arora.typ"
#include "/subfiles/sangita.typ"
#include "/subfiles/aditya.typ"
#include "/subfiles/comic.typ"
#include "/subfiles/digest.typ"
#include "/subfiles/games.typ"
#include "/subfiles/quiz.typ"
#include "/subfiles/crossword.typ"
#include "/subfiles/whoami.typ"
#include "/subfiles/linkedlist.typ"
// #include "/subfiles/openings.typ"
#include "/subfiles/contribute.typ"
#include "/subfiles/solutions.typ"
#include "/subfiles/back.typ"
#include "/subfiles/blankBack.typ"
