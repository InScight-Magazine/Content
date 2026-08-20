#import "recommendationLetter.typ": *

#for content in yaml("letters.yml") {
  recLetter(content)
}
