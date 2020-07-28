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
  Passage.create(text: text, language: "English", skill_level: 1, time_allotted: 60)
end


u1 = User.create(username: "Elisheva", password: "1234")
u2 = User.create(username: "Dina", password: "1234")

# seeding some games for the leadeboard
p2 = Passage.first
g1 = Game.create(user_id: u2.id, passage_id: p2.id, speed: 35, accuracy: 93)
g2 = Game.create(user_id: u2.id, passage_id: p2.id, speed: 40, accuracy: 81)
g3 = Game.create(user_id: u2.id, passage_id: p2.id, speed: 26, accuracy: 67.42)
g4 = Game.create(user_id: u2.id, passage_id: p2.id, speed: 30, accuracy: 86.45)
g5 = Game.create(user_id: u2.id, passage_id: p2.id, speed: 30, accuracy: 82.3)