import json

file = open('basic_python/sample2.json')

data = json.load(file)

for i in data['employee']:
    print(i)