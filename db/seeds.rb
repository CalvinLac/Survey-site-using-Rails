# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Questionaire.destroy_all
Question.destroy_all

# 10.times do
#   q = Questionaire.new
#   q.title = Faker::Lorem.word
#   q.description  = Faker::Lorem.sentence
#   q.save 
# end

# 20.times do
#   question = Question.new
#   question.title = Faker::Lorem.word
#   question.questionaire_id = Questionaire.all.sample.id
#   question.save
# end 