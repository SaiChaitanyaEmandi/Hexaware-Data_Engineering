import json

student = '{"Name": "Karthik", "Age": "21", "id": "123", "gender": "male"}'

d = json.loads(student)

print('The python dictionary is: ', d)