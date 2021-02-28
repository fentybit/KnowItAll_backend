# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Remove existing DB 
User.destroy_all
Category.destroy_all
Question.destroy_all


# User Database
main_user = User.create(name: "Fenty Hall", avatar: "https://pokeres.bastionbot.org/images/pokemon/5.png")


# Category Database
animals = Category.create(name: "Animals", score: 0)
art = Category.create(name: "Art", score: 0)
celebrities = Category.create(name: "Celebrities", score: 0)
computer_science = Category.create(name: "Computer Science", score: 0)
geography = Category.create(name: "Geography", score: 0)
history = Category.create(name: "History", score: 0)
mathematics = Category.create(name: "Mathematics", score: 0)
music = Category.create(name: "Music", score: 0)
sports = Category.create(name: "Sports", score: 0)
vehicles = Category.create(name: "Vehicles", score: 0)


# Question Database


puts "Seeding Database Success!"