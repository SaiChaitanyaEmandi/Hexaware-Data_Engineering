class incidents:
    def __init__(self):
        self.incident_id = 1001
        self.incident_type = 'theft'
        self.status = 'open'
    def printData(self):
        print(self.incident_id,self.incident_type,self.status)

class victims(incidents):
    def __init__(self):
        self.victim_id = 101
        self.victim_name = 'Shanks'
        self.dob = '01-01-1990'
        self.gender = 'male'
    def display(self):
        print(self.victim_id, self.victim_name, self.dob, self.gender)

class suspects(incidents):
    def __init__(self):
        self.suspect_id = 1
        self.suspect_name = 'luffy'
        self.date_of_birth = '21-04-2000'
    def getData(self):
        print(self.suspect_id, self.suspect_name,self.date_of_birth)

myObj1 = victims()
myObj2 = suspects()
myObj1.display()
myObj2.getData()