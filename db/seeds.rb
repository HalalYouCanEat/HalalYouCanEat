# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Restaurant.destroy_all
HalalItem.destroy_all
Review.destroy_all

100.times do |index|
  User.create!(id: index + 1, name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
	Restaurant.create!(id: index + 1, name: Faker::Restaurant.name, cuisine: Faker::Restaurant.type, location_id: Faker::Number.between(from: 1, to: 100), state: Faker::Address.state, zipcode: Faker::Address.zip_code, address: Faker::Address.full_address, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude)
	HalalItem.create!(id: index + 1, name: Faker::Food.dish, restaurant_id: Faker::Number.between(from: 1, to: 100), description: Faker::Food.description, verification: Faker::Food.ingredient, vegan: Faker::Boolean.boolean, gluten_free: Faker::Boolean.boolean, vegetarian: Faker::Boolean.boolean)
	Review.create!(id: index + 1, restaurant_id: Faker::Number.between(from: 1, to: 100), halal_item_id: Faker::Number.between(from: 1, to: 100), user_id: Faker::Number.between(from: 1, to: 100), date_of_review: Faker::Date.between(from: '2014-09-23', to: '2021-09-25'), content: Faker::Restaurant.review, rating: Faker::Number.between(from: 1, to: 5))
end

# Main user for testing
User.create!(id: 101, name: "Test User", email: "testing@gmail.com", password: "password")

p "Created #{User.count} users"