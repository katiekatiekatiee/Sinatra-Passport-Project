a = Country.find_or_create_by(name: "Spain", description: "We spent time in Barcelona and had the most amazing Spanish wine! 10/10 would recommend if you like wine and dancing!")
b = Country.find_or_create_by(name: "USA", description: "It has its perks.")
c = Country.find_or_create_by(name: "Germany", description: "I don't understand the language and it was very cold.")
d = Country.find_or_create_by(name: "Thailand", description: "Wow. I am never eating Pad Thai again. Note to self, learn about other local foods before going to a new country.")
e = Country.find_or_create_by(name: "Egypt", description: "We climbed inside one of the pyramids AND rode camels through the desert!")




# User.create(name: "Catherine", email: "catherinemhodgkinson@gmail.com", password: "red123")
# User.create(name: "Ellie", email: "chickenpate@yahoo.com", password: "salmon")
# User.create(name: "Scott", email: "gp4lyfe@hotmail.com", password: "blackandwhite")
# User.create(name: "Everett", email: "ilovecarrots@gmail.com", password: "scotthatesme")

a.user = User.first
b.user = User.first
c.user = User.last
d.user = User.find_by_id(3)
e.user = User.find_by_id(2)

a.save
b.save
c.save
d.save
e.save
