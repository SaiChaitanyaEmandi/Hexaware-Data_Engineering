class artist:
    def __init__(self):
        self.name = 'John'
        self.artist_id = 101
        self.dob = '19-07-1998'
        self.nationality = 'Indian'
    def display(self):
        print(self.name,self.artist_id,self.dob,self.nationality)

class artWork(artist):
    def __init__(self):
        self.artWork_id = 1
        self.title = 'Picasso'
        self.medium = 'Paper and Pen'
        super().__init__()
    def getData(self):
        print(self.title, self.artWork_id, self.medium)

class gallery(artWork):
    def __init__(self):
        self.gallery_id = 1001
        self.gallery_name = 'Creative Canvas'
        self.description = 'Contains creative artworks'
    def printData(self):
        print(self.gallery_id, self.gallery_name, self.description)

myObj = gallery()
myObj.printData()