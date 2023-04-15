import json
import sys

usage = "Usage: python3 jsondiff.py file1.json file2.json"

if len(sys.argv) < 3 :
    print(f'{usage}')
    exit(0)


file1 = sys.argv[1]
file2 = sys.argv[2]

with open(file1, 'r') as file:
    json1 = json.load(file)

with open(file2, 'r') as file:
    json2 = json.load(file)

differences = []

for key in json1:
    if key not in json2:
        differences.append(key)
    elif json1[key] != json2[key]:
        differences.append(json1[key])
        differences.append(json2[key])


print(differences)

