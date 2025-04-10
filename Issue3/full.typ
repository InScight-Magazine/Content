#import "template-files/inscight-template.typ": *
#import "subfiles/issueConstants.typ": *

#counter(page).update(2);

#show: default.with(
  header-global: header-global,
)
#include "subfiles/debanuj.typ"
#include "subfiles/sayan.typ"
#include "subfiles/tisha.typ"
#include "subfiles/interviewCSS.typ"
#include "subfiles/digest.typ"
