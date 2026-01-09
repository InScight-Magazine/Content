import csv
import sys
import yaml
import gdown

file = sys.argv[1]
start = int(sys.argv[2])
stop = int(sys.argv[3])

with open(file, mode='r', newline='') as file:
    reader = csv.reader(file)
    # Optional: Skip the header row using next()
    header = next(reader, None) 
    digestData = []
    for (i, row) in enumerate(reader):
        if i >= (start - 1) and i <= (stop - 1):
            data = {"Author": row[1],
                    "Affiliation": row[2],
                    "Title": row[3],
                    "Summary": row[4],
                    "Url": row[8],
                    "Caption": row[6],
                    "Reference": "",
                    "Image": "digest-{}".format(i),
                    "Keywords": [s.strip() for s in row[7].split(",")]
                    }
            gdown.download(row[5], "digest-{}".format(i), quiet=False, fuzzy=True)
            digestData.append(data)
    with open('digest.yaml', 'w') as file:
        yaml.dump(digestData, file, default_flow_style=False, width=100000, sort_keys=False, allow_unicode=True)
