#import "template-files/inscight-template.typ": *
#import "dataFiles/issueConstants.typ": *

#counter(page).update(2);

#show: default.with(
  header-global: header-global,
  // frontImage: "/covers/front.png",
)

#include "/subfiles/front.typ"
#include "/subfiles/outline.typ"
#include "/subfiles/sayan.typ"
#include "/subfiles/dishari.typ"
#include "/subfiles/debanuj.typ"
#include "/subfiles/interviewCSS.typ"
#include "/subfiles/tisha.typ"
#include "/subfiles/coraBall.typ"
#include "/subfiles/interviewMB.typ"
#include "/subfiles/digest.typ"
#include "/subfiles/games.typ"
#include "/subfiles/quiz.typ"
#include "/subfiles/crossword.typ"
#include "/subfiles/linkedlist.typ"
#include "/subfiles/contribute.typ"
#include "/subfiles/solutions.typ"
