person = {'name' : 'chaitu', 'age' : 21, 'gender' : 'male'}

print(person)

print(person['age'])

person['studies'] = 'completed'
print(person)

print(person.keys())

print(person.values())

person.pop('studies')
print(person)
