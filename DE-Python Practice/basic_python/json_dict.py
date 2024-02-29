import json

json_string = '{"Name" : "Chaitu", "age" : 21, "id" : 1001, "gender" : "m"}'

person = json.loads(json_string)

print(person)
print(person['age'])
print(person['Name'])
