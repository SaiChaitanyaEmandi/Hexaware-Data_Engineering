import json

employee ='{"id":"09", "name": "Nitin", "department":"Finance", "salary": "20000"}'

file = json.loads(employee)

print(file)
print(type(file))