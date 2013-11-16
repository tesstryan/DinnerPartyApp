# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


a = Chef.new
a.name = "Ian Reither"
a.image_url = ""
a.description = "Specializes in fish dishes with spicy accents."
a.celeb_name = "Anthony Bourdain"
a.celeb_url = ""
a.save

a = Chef.new
a.name = "Eric Bernheld"
a.image_url = ""
a.description = "Specializes in meat dishes."
a.celeb_name = "Gordon Ramsay"
a.celeb_url = ""
a.save

a = Chef.new
a.name = "Francie Love"
a.image_url = ""
a.description = "The best cook we have in this group."
a.celeb_name = "Rachel Ray"
a.celeb_url = ""
a.save

b = Dinner.new
b.location = "1226 West Draper"
b.date = "November 24"
b.time = ""
b.details = "Thanksgiving Theme!"
b.save

b = Dinner.new
b.location = "1226 West Draper"
b.date = "December 8"
b.time = ""
b.details = "Bring wine to share!"
b.save

b = Dinner.new
b.location = "1226 West Draper"
b.date = "December 8"
b.time = ""
b.details = "Bring wine to share!"
b.save

b = Dinner.new
b.location = "1226 West Draper"
b.date = "January 5"
b.time = ""
b.details = "New year, new food!"
b.save

b = Dinner.new
b.location = "1226 West Draper"
b.date = "January 12"
b.time = ""
b.details = "Bring wine to share!"
b.save

b = Dinner.new
b.location = "1226 West Draper"
b.date = "January 19"
b.time = ""
b.details = "Bring wine to share!"
b.save

c = Guest.new
c.name = "Michael Facchinello"
c.save

c = Guest.new
c.name = "Francie Love"
c.save

c = Guest.new
c.name = "Joey Koop"
c.save

c = Guest.new
c.name = "Reza Sultan"
c.save

c = Guest.new
c.name = "Ian Reither"
c.save

c = Guest.new
c.name = "Tess Ryan"
c.save

c = Guest.new
c.name = "Eric Berheld"
c.save

c = Guest.new
c.name = "Sarah Wanek"
c.save
