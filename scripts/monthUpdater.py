import sys

source = sys.argv[1]
target = source[:-4] + "_dated.svg"

with open(source, "r") as sourceFile:
    text = sourceFile.read()
    while text.find("#1 | NOV'24") != -1:
        text = text.replace("#1 | NOV'24", "#2 | MAR'25", 1)
    while text.find("#1 | JAN'25") != -1:
        text = text.replace("#1 | JAN'25", "#2 | MAR'25", 1)
    while text.find("#2 | FEB'25") != -1:
        text = text.replace("#2 | FEB'25", "#2 | MAR'25", 1)

with open(target, "w") as targetFile:
    targetFile.write(text)
