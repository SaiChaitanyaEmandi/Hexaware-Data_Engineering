import json

student = {
    "name" : "sathiyajith",
    "rollno" : 56,
    "cgpa" : 8.6,
    "phonenumber" : "9976770500"
}

with open('basic_python/sample3.json','w') as file:
    json.dump(student, file)