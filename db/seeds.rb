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
	# Restaurant.create!(id: index + 1, name: Faker::Restaurant.name, cuisine: Faker::Restaurant.type, location_id: Faker::Number.between(from: 1, to: 100), state: Faker::Address.state, zipcode: Faker::Address.zip_code, address: Faker::Address.full_address, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude)
	HalalItem.create!(id: index + 1, name: Faker::Food.dish, restaurant_id: Faker::Number.between(from: 1, to: 100), description: Faker::Food.description, verification: Faker::Food.ingredient, vegan: Faker::Boolean.boolean, gluten_free: Faker::Boolean.boolean, vegetarian: Faker::Boolean.boolean)
	Review.create!(id: index + 1, restaurant_id: Faker::Number.between(from: 1, to: 100), halal_item_id: Faker::Number.between(from: 1, to: 100), user_id: Faker::Number.between(from: 1, to: 100), date_of_review: Faker::Date.between(from: '2014-09-23', to: '2021-09-25'), content: Faker::Restaurant.review, rating: Faker::Number.between(from: 1, to: 5))
end

# Main user for testing
User.create!(id: 101, name: "Test User", email: "testing@gmail.com", password: "password", admin: true)

# Creating 55 restaurants in the database
Restaurant.create!(id: 1, name: "Ayat", cuisine: "Palestinian", state: "New York", zipcode: 11209, address: "8504 3rd Ave. Brooklyn, NY 11209", latitude: 40.6242122, longitude: -74.0310179, url: "ayatnyc.com", rating: 4.7)
Restaurant.create!(id: 2, name: "Birdies", cuisine: "Fast Food", state: "New York", zipcode: 11206, address: "810 Grand St. Brooklyn, NY 11206", latitude: 40.7117898, longitude: -73.9410835, url: "http://www.bitebirdies.com/", rating: 4.7)
Restaurant.create!(id: 3, name: "Birria Mania NYC", cuisine: "Mexican", state: "New York", zipcode: 11209, address: "7508 3rd Ave. Brooklyn, NY 11209", latitude: 40.6312544, longitude: -74.0281736, url: "http://birriamanianyc.com/", rating: 4.4)
Restaurant.create!(id: 4, name: "Chote Miya", cuisine: "Indian", state: "New York", zipcode: 11201, address: "55 Water St. Brooklyn, NY 11201", latitude: 40.7036259, longitude: -73.9916942, url: "https://chotemiya.com/", rating: 4.1)
Restaurant.create!(id: 5, name: "Coney Island House of Wings", cuisine: "Fast Food", state: "New York", zipcode: 11235, address: "3100 Ocean Pkwy. Brooklyn, NY 11235", latitude: 40.5758895, longitude: -73.9693561, url: "https://www.coneyislandhouseofwings.com/order/", rating: 4.8)

p "Created #{User.count} users"