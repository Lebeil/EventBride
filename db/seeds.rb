# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# require 'faker'
#
# cities = %w[Paris Bordeaux Lyon Lisbonne Madrid Annecy]
#
#
#
# users = []
# events = []
#
# # Create Default Admin User
# users << User.create!(
#     first_name: "John",
#     last_name: "Doe",
#     email: "juliobento2@yopmail.com",
#     description: Faker::Lorem.paragraph(sentence_count: 1)[0],
#     password: '1234567'
# )
# puts "Default Admin user has been created"
#
# 10.times do |i|
#   users << User.create!(
#       first_name: Faker::Name.first_name,
#       last_name: Faker::Name.last_name,
#       email: "#{Faker::Name.first_name}@yopmail.com",
#       description: Faker::Lorem.paragraph(sentence_count: 1)[0],
#       password: 'azerty'
#   )
#
#   puts "#{i + 1}/10 utilisateurs créés"
# end
#
# 10.times do |i|
#   events << Event.create!(
#       # start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
#       start_date: Time.parse('2020-08-12'),
#       duration: 5 * rand(1..100),
#       title: Faker::Name.name,
#       description: Faker::Lorem.paragraph(sentence_count: 10),
#       price: rand(1..999),
#       location: cities.sample,
#       author: User.last
#   )
#
#   puts "#{i + 1}/10 évènements créés"
# end
#
# 10.times do |i|
#   Participation.create!(
#       user: users.sample,
#       event: events.sample
#   )
#
#   puts "#{i + 1}/10 participations créés"
# end