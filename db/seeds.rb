# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Game.destroy_all
Passage.destroy_all

50.times do
  # joining aray of strings
  text = Faker::Lorem.paragraphs(number: 30).join()      
  Passage.create(text: text, language: "English", skill_level: 1, time_alloted: 1)
end


u1 = User.create(username: "Elisheva", password: "1234")
u2 = User.create(username: "Dina", password: "1234")

# g1 = Game.create(userId: id, passageId: 1, speed: 0, accuracy: 0)