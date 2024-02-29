import json

file = open('basic_python/sample.json')

data = json.load(file)

print('Type:', type(data))
print(data)