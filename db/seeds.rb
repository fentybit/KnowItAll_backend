# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#! Remove existing DB 
User.destroy_all
Category.destroy_all
Question.destroy_all

#! User Database
main_user = User.create(name: "Fenty Hall", avatar: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png")

#! Category Database
animals = Category.create(name: "Animals")
celebrities = Category.create(name: "Celebrities")
computer_science = Category.create(name: "Computer Science")
geography = Category.create(name: "Geography")
history = Category.create(name: "History")
mathematics = Category.create(name: "Mathematics")
music = Category.create(name: "Music")
sports = Category.create(name: "Sports")

#! Question Database
# Instantiate Animals Trivia from JSON Data
animals.questions.create(Api.animals)
celebrities.questions.create(Api.celebrities)
computer_science.questions.create(Api.computer_science)
geography.questions.create(Api.geography)
history.questions.create(Api.history)
mathematics.questions.create(Api.mathematics)
music.questions.create(Api.music)
sports.questions.create(Api.sports)

puts "Seeding Database Success!"