# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "starting"
4.times do
  flat = Flat.create!(
    name: Faker::Book.title,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraphs(number: 3).join(' '),
    price_per_night: rand(1..100),
    number_of_guests: rand(1..10)
  )
  p flat
end
