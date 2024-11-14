import sys

source = sys.argv[1]
target = sys.argv[2]

with open(source, "r") as sourceFile:
    text = sourceFile.read()
    counter = 1
    while text.find("#page#") != -1:
        text = text.replace("#page#", str(counter).zfill(2), 1)
        counter += 1
with open(target, "w") as targetFile:
    targetFile.write(text)

# insertPageNumbers("/home/abhirup/storage/InScight-Documents/Issue1-Nov24/Complete/complete.svg", "/home/abhirup/storage/InScight-Documents/Issue1-Nov24/Complete/completeCopy.svg")
