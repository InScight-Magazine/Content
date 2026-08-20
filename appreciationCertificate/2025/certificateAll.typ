#import "certificate.typ": *

#for pair in yaml("recipients.yml").sorted() {
  ceriticatePage(..pair.split(","))
}
