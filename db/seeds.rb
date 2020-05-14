# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

User.destroy_all
Event.destroy_all
Participation.destroy_all

10.times do
  user = User.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      description: Faker::Superhero.descriptor,
      password: "testmdp")
end
puts "10 utilisateurs créés"

6.times do
  event = Event.create!(
      start_date: Faker::Time.forward(days: 100, format: :long),
      duration: [15, 30, 45, 60, 90, 120, 150].sample,
      title: Faker::DcComics.title,
      description: Faker::Lorem.paragraphs,
      price: rand(40..200),
      location: Faker::Nation.capital_city,
      admin: User.all.sample,
      )
end
puts "6 évènements créés"

20.times do
  participation = Participation.create!(
      event: Event.all.sample,
      user: User.all.sample,
      stripe_customer_id: Faker::Invoice.reference,
      )
end
puts "20 présences confirmées"