import json

employee = {
  "id": "04",
  "name": "sunil",
  "department": "HR",
  "salary": "30000"
}

object = json.dumps(employee, indent=4)
print(object)
