import sys

source = sys.argv[1]
target = source[:-4] + "_pgnum.svg"
startFrom = sys.argv[2]

with open(source, "r") as sourceFile:
    text = sourceFile.read()
    counter = 1
    while text.find("#page#") != -1:
        text = text.replace("#page#", str(counter).zfill(2), 1)
        counter += 1
with open(target, "w") as targetFile:
    targetFile.write(text)
