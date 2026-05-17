#import "template-files/inscight-template.typ": *

#show: default.with(
  issueDetails: yaml("/dataFiles/issueData.yml"),
)

#include "/subfiles/front.typ"
#include "/subfiles/foreword.typ"
#include "/subfiles/editor.typ"
#include "/subfiles/outline.typ"
#include "/subfiles/dishari.typ"
#include "/subfiles/baibhav.typ"
#include "/subfiles/pandey.typ"
#include "/subfiles/abhratanu.typ"
#include "/subfiles/dhara.typ"
#include "/subfiles/comic.typ"
#include "/subfiles/digest.typ"
#include "/subfiles/games.typ"
#include "/subfiles/quiz.typ"
#include "/subfiles/linkedlist.typ"
#include "/subfiles/crossword.typ"
#include "/subfiles/openings.typ"
#include "/subfiles/contribute.typ"
#include "/subfiles/solutions.typ"
#include "/subfiles/back.typ"
