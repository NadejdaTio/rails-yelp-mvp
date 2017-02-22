# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
restaurants_attributes = []

5.times do |variable|
  h = {
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    category: "french",
    phone_number: Faker::PhoneNumber.phone_number
  }
  restaurants_attributes << h
end

restaurants_attributes.each { |params| Restaurant.create!(params) }
