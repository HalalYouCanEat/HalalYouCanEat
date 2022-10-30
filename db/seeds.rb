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

# Creating 55 halal restaurants from new york in the database
Restaurant.create!(id: 1, name: "Ayat", cuisine: "Palestinian", state: "New York", zipcode: 11209, address: "8504 3rd Ave. Brooklyn, NY 11209", latitude: 40.6242122, longitude: -74.0310179, url: "ayatnyc.com", rating: 4.7)
Restaurant.create!(id: 2, name: "Birdies", cuisine: "Fast Food", state: "New York", zipcode: 11206, address: "810 Grand St. Brooklyn, NY 11206", latitude: 40.7117898, longitude: -73.9410835, url: "http://www.bitebirdies.com/", rating: 4.7)
Restaurant.create!(id: 3, name: "Birria Mania NYC", cuisine: "Mexican", state: "New York", zipcode: 11209, address: "7508 3rd Ave. Brooklyn, NY 11209", latitude: 40.6312544, longitude: -74.0281736, url: "http://birriamanianyc.com/", rating: 4.4)
Restaurant.create!(id: 4, name: "Chote Miya", cuisine: "Indian", state: "New York", zipcode: 11201, address: "55 Water St. Brooklyn, NY 11201", latitude: 40.7036259, longitude: -73.9916942, url: "https://chotemiya.com/", rating: 4.1)
Restaurant.create!(id: 5, name: "Coney Island House of Wings", cuisine: "Fast Food", state: "New York", zipcode: 11235, address: "3100 Ocean Pkwy. Brooklyn, NY 11235", latitude: 40.6317418, longitude: -74.0221244, url: "https://www.coneyislandhouseofwings.com/order/", rating: 4.8)
Restaurant.create!(id: 6, name: "Fresh Eats Cafe", cuisine: "American", state: "New York", zipcode: 11209, address: "478 72nd St. Brooklyn, NY 11209", latitude: 40.7036259, longitude: -73.9916942, url: "https://fresh-eats-cafe.business.site/?utm_source=gmb&utm_medium=referral", rating: 4.8)
Restaurant.create!(id: 7, name: "Namkeen", cuisine: "Fast Food", state: "New York", zipcode: 11249, address: "338 Bedford Ave. Brooklyn, NY 11249", latitude: 40.7128964, longitude: -73.9626133, url: "https://www.eatnamkeen.com/menu", rating: 4.3)
Restaurant.create!(id: 8, name: "The Soul Spot", cuisine: "Caribbean", state: "New York", zipcode: 11201, address: "302 Atlantic Ave. Brooklyn, NY 11201", latitude: 40.6882213, longitude: -73.9888748, url: "http://soulspotrestaurant.com/wp-content/uploads/2013/02/49045679.pdf", rating: 4.2)
Restaurant.create!(id: 9, name: "Yemen Cafe", cuisine: "Yemeni", state: "New York", zipcode: 11201, address: "176 Atlantic Ave. Brooklyn, NY 11201", latitude: 40.6898027, longitude: -73.9937017, url: "https://www.yemencafeandrestaurant.getsauce.com/order-online", rating: 4.6)
Restaurant.create!(id: 10, name: "212 Steakhouse", cuisine: "Steak", state: "New York", zipcode: 10022, address: "316 E 53rd St. New York, NY 10022", latitude: 40.756322, longitude: -73.9665135, url: "http://places.singleplatform.com/212-steakhouse/menu?ref=google", rating: 4.6)
Restaurant.create!(id: 11, name: "Birria LES", cuisine: "Mexican", state: "New York", zipcode: 10002, address: "127 Rivington St. New York, NY 10002", latitude: 40.7195429, longitude: -73.9871103, url: "http://birriales.com/", rating: 4.4)
Restaurant.create!(id: 12, name: "Burgermania", cuisine: "Fast Food", state: "New York", zipcode: 10018, address: "274 W 40th St. New York, NY 10018", latitude: 40.7557562, longitude: -73.9905172, url: "http://places.singleplatform.com/burgermania/menu?ref=google", rating: 4.5)
Restaurant.create!(id: 13, name: "Haandi", cuisine: "Pakistani", state: "New York", zipcode: 10016, address: "113 Lexington Ave. New York, NY 10016", latitude: 40.7423994, longitude: -73.9823688, rating: 4) # no url
Restaurant.create!(id: 14, name: "Jiang's Kitchen", cuisine: "Chinese", state: "New York", zipcode: 10003, address: "65 St Marks Pl. New York, NY 10003", latitude: 40.7281811, longitude: -73.9860713, url: "https://www.jiangskitchenny.com/", rating: 4.7)
Restaurant.create!(id: 15, name: "Meat and Bread", cuisine: "Fast Food", state: "New York", zipcode: 10002, address: "201 Allen St. Store 3, New York, NY 10002", latitude: 40.7225399, longitude: -73.9891671, url: "https://www.meatandbreadnyc.com/", rating: 4.8)
Restaurant.create!(id: 16, name: "Tallgrass Burger", cuisine: "Fast Food", state: "New York", zipcode: 10009, address: "214 1st Ave. New York, NY 10009", latitude: 40.7304234, longitude: -73.9828824, url: "https://www.tallgrassburger.com/", rating: 4.6)
Restaurant.create!(id: 17, name: "Top Thai 55", cuisine: "Thai", state: "New York", zipcode: 10014, address: "55 Carmine St. New York, NY 10014", latitude: 40.7299173, longitude: -74.0042072, url: "https://www.grubhub.com/restaurant/top-thai-vintage-55-carmine-st-new-york/2103404", rating: 4.3)
Restaurant.create!(id: 18, name: "BBQ Nite", cuisine: "BBQ", state: "New York", zipcode: 11003, address: "663 Elmont Rd. Elmont, NY 11003", latitude: 40.6934559, longitude: -73.7176535, url: "http://places.singleplatform.com/bbq-nite-1/menu?ref=google", rating: 4)
Restaurant.create!(id: 19, name: "Fateh's BBQ", cuisine: "BBQ", state: "New York", zipcode: 11554, address: "2079 Hempstead Tpke. East Meadow, NY 11554", latitude: 40.725243, longitude: -73.559747, url: "http://www.fatehsbbq.com/", rating: 4.8)
Restaurant.create!(id: 20, name: "Kababjees", cuisine: "Pakistani", state: "New York", zipcode: 11801, address: "495 S Broadway, Hicksville, NY 11801", latitude: 40.7572429, longitude: -73.5103748, url: "https://kababjees.mknxonline.com/menus", rating: 3.6)

p "Created #{User.count} users"