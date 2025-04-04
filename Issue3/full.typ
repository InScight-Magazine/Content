#import "template-files/inscight-template.typ": *
#import "subfiles/issueConstants.typ": *

#counter(page).update(2);

#show: default.with(
  header-global: header-global,
)
#include "subfiles/editor.typ"
#include "subfiles/outline.typ"
#include "subfiles/debanuj.typ"
#include "subfiles/digest.typ"
#include "subfiles/quiz.typ"
