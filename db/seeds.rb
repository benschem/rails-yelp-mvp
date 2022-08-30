# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

categories = %w[chinese italian japanese french belgian]

puts 'Destroying all records in development environment'
Restaurant.destroy_all if Rails.env.development?

puts 'Seeding 10 random restaurants...'
10.times do
  restaurant = Restaurant.create!(
    name: Faker::Games::Pokemon.move,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: categories[rand(5)]
  )
  puts "Created #{restaurant.name}!"
end

puts 'Finished seeding database!'
