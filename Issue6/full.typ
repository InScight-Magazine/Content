#import "template-files/inscight-template.typ": *

#show: default.with(
  issueDetails: yaml("/dataFiles/issueData.yml"),
)

#include "/subfiles/front.typ"
// #include "/subfiles/anamitra.typ"
// #include "/subfiles/editor.typ"
// #include "/subfiles/foreword.typ"
#include "/subfiles/outline.typ"
#include "/subfiles/openings.typ"
#include "/subfiles/basu.typ"
#include "/subfiles/tanmoy.typ"
#include "/subfiles/atri.typ"
#include "/subfiles/igem.typ"
#include "/subfiles/apurba.typ"
#include "/subfiles/digest.typ"
#include "/subfiles/comic.typ"
#include "/subfiles/games.typ"
#include "/subfiles/quiz.typ"
#include "/subfiles/whoami.typ"
#include "/subfiles/crossword.typ"
// #include "/subfiles/linkedlist.typ"
// #include "/subfiles/contribute.typ"
#include "/subfiles/solutions.typ"
#include "/subfiles/back.typ"
