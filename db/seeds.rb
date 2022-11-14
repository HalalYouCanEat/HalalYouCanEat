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

# Creating 50+ halal restaurants from new york in the database
Restaurant.create!(id: 1, name: "Ayat", cuisine: "Palestinian", state: "New York", zipcode: 11209, address: "8504 3rd Ave, Brooklyn, NY 11209", latitude: 40.6242122, longitude: -74.0310179, url: "http://ayatnyc.com", rating: 4.7)
Restaurant.create!(id: 2, name: "Birdies", cuisine: "Fast Food", state: "New York", zipcode: 11206, address: "810 Grand St, Brooklyn, NY 11206", latitude: 40.7117898, longitude: -73.9410835, url: "http://www.bitebirdies.com/", rating: 4.7)
Restaurant.create!(id: 3, name: "Birria Mania NYC", cuisine: "Mexican", state: "New York", zipcode: 11209, address: "7508 3rd Ave, Brooklyn, NY 11209", latitude: 40.6312544, longitude: -74.0281736, url: "http://birriamanianyc.com/", rating: 4.4)
Restaurant.create!(id: 4, name: "Chote Miya", cuisine: "Indian", state: "New York", zipcode: 11201, address: "55 Water St, Brooklyn, NY 11201", latitude: 40.7036259, longitude: -73.9916942, url: "https://chotemiya.com/", rating: 4.1)
Restaurant.create!(id: 5, name: "Coney Island House of Wings", cuisine: "Fast Food", state: "New York", zipcode: 11235, address: "3100 Ocean Pkwy, Brooklyn, NY 11235", latitude: 40.6317418, longitude: -74.0221244, url: "https://www.coneyislandhouseofwings.com/order/", rating: 4.8)
Restaurant.create!(id: 6, name: "Fresh Eats Cafe", cuisine: "American", state: "New York", zipcode: 11209, address: "478 72nd St, Brooklyn, NY 11209", latitude: 40.7036259, longitude: -73.9916942, url: "https://fresh-eats-cafe.business.site/?utm_source=gmb&utm_medium=referral", rating: 4.8)
Restaurant.create!(id: 7, name: "Namkeen", cuisine: "Fast Food", state: "New York", zipcode: 11249, address: "338 Bedford Ave, Brooklyn, NY 11249", latitude: 40.7128964, longitude: -73.9626133, url: "https://www.eatnamkeen.com/menu", rating: 4.3)
Restaurant.create!(id: 8, name: "The Soul Spot", cuisine: "Caribbean", state: "New York", zipcode: 11201, address: "302 Atlantic Ave, Brooklyn, NY 11201", latitude: 40.6882213, longitude: -73.9888748, url: "http://soulspotrestaurant.com/wp-content/uploads/2013/02/49045679.pdf", rating: 4.2)
Restaurant.create!(id: 9, name: "Yemen Cafe", cuisine: "Yemeni", state: "New York", zipcode: 11201, address: "176 Atlantic Ave, Brooklyn, NY 11201", latitude: 40.6898027, longitude: -73.9937017, url: "https://www.yemencafeandrestaurant.getsauce.com/order-online", rating: 4.6)
Restaurant.create!(id: 10, name: "212 Steakhouse", cuisine: "Steak", state: "New York", zipcode: 10022, address: "316 E 53rd St, New York, NY 10022", latitude: 40.756322, longitude: -73.9665135, url: "http://places.singleplatform.com/212-steakhouse/menu?ref=google", rating: 4.6)
Restaurant.create!(id: 11, name: "Birria LES", cuisine: "Mexican", state: "New York", zipcode: 10002, address: "127 Rivington St, New York, NY 10002", latitude: 40.7195429, longitude: -73.9871103, url: "http://birriales.com/", rating: 4.4)
Restaurant.create!(id: 12, name: "Burgermania", cuisine: "Fast Food", state: "New York", zipcode: 10018, address: "274 W 40th St, New York, NY 10018", latitude: 40.7557562, longitude: -73.9905172, url: "http://places.singleplatform.com/burgermania/menu?ref=google", rating: 4.5)
Restaurant.create!(id: 13, name: "Haandi", cuisine: "Pakistani", state: "New York", zipcode: 10016, address: "113 Lexington Ave, New York, NY 10016", latitude: 40.7423994, longitude: -73.9823688, rating: 4) # no url
Restaurant.create!(id: 14, name: "Jiang's Kitchen", cuisine: "Chinese", state: "New York", zipcode: 10003, address: "65 St Marks Pl, New York, NY 10003", latitude: 40.7281811, longitude: -73.9860713, url: "https://www.jiangskitchenny.com/", rating: 4.7)
Restaurant.create!(id: 15, name: "Meat and Bread", cuisine: "Fast Food", state: "New York", zipcode: 10002, address: "201 Allen St, Store 3, New York, NY 10002", latitude: 40.7225399, longitude: -73.9891671, url: "https://www.meatandbreadnyc.com/", rating: 4.8)
Restaurant.create!(id: 16, name: "Tallgrass Burger", cuisine: "Fast Food", state: "New York", zipcode: 10009, address: "214 1st Ave, New York, NY 10009", latitude: 40.7304234, longitude: -73.9828824, url: "https://www.tallgrassburger.com/", rating: 4.6)
Restaurant.create!(id: 17, name: "Top Thai 55", cuisine: "Thai", state: "New York", zipcode: 10014, address: "55 Carmine St, New York, NY 10014", latitude: 40.7299173, longitude: -74.0042072, url: "https://www.grubhub.com/restaurant/top-thai-vintage-55-carmine-st-new-york/2103404", rating: 4.3)
Restaurant.create!(id: 18, name: "BBQ Nite", cuisine: "BBQ", state: "New York", zipcode: 11003, address: "663 Elmont Rd, Elmont, NY 11003", latitude: 40.6934559, longitude: -73.7176535, url: "http://places.singleplatform.com/bbq-nite-1/menu?ref=google", rating: 4)
Restaurant.create!(id: 19, name: "Fateh's BBQ", cuisine: "BBQ", state: "New York", zipcode: 11554, address: "2079 Hempstead Tpke, East Meadow, NY 11554", latitude: 40.725243, longitude: -73.559747, url: "http://www.fatehsbbq.com/", rating: 4.8)
Restaurant.create!(id: 20, name: "Kababjees", cuisine: "Pakistani", state: "New York", zipcode: 11801, address: "495 S Broadway, Hicksville, NY 11801", latitude: 40.7572429, longitude: -73.5103748, url: "https://kababjees.mknxonline.com/menus", rating: 3.6)
Restaurant.create!(id: 21, name: "Kabul Kabob House", cuisine: "Afghan", state: "New York", zipcode: 11355, address: "42-51 Main St, Queens, NY 11355", latitude: 40.7539537, longitude: -73.8296284, url: "http://www.kabulkababhouse.com/", rating: 4.2)
Restaurant.create!(id: 22, name: "Kandahar Grill", cuisine:"Afghan", state: "New York", zipcode: 11801, address: "459A S Broadway, Hicksville, NY 11801", latitude: 40.7580421, longitude: -73.5139805, url: "https://www.nykandahargrill.com/categories.php", rating: 4.4)
Restaurant.create!(id: 23, name: "Karahi House", cuisine: "Pakistani", state: "New York", zipcode: 11580, address: "324 N Central Ave, Valley Stream, NY 11580", latitude: 40.6765972, longitude: -73.7117827, url:"http://www.karahihouse.com/", rating: 4)
Restaurant.create!(id: 24, name: "Kick'n Chicken", cuisine: "Fast Food", state: "New York", zipcode: 11735, address: "342 Main St, Farmingdale, NY 11735", latitude: 40.7312794, longitude: -73.4503935, url:"http://www.kicknchicken.com/", rating: 4)
Restaurant.create!(id: 25 , name: "Peri Peri Guys", cuisine: "Fast Food", state: "New York", zipcode: 11801, address: "285 S Broadway, Hicksville, NY 11801", latitude: 40.7628231, longitude: -73.518225, url: "https://periperiguys.com/menu/", rating: 4.7)
Restaurant.create!(id: 26, name: "PYO Chai", cuisine: "Bubble Tea", state: "New York", zipcode: 11530, address: "110 Covert Ave, Stewart Manor, NY 11530", latitude: 40.7201618, longitude: -73.6906165, url: "http://places.singleplatform.com/pyo-chai/menu?ref=google", rating: 4.4)
Restaurant.create!(id: 27, name: "Samovar", cuisine: "Afghan", state: "New York", zipcode: 11801, address: "27 Woodbury Rd, Hicksville, NY 11801", latitude: 40.7695324, longitude: -73.5231102, url: "http://places.singleplatform.com/samovar-restaurant/menu?ref=google", rating: 4.8)
Restaurant.create!(id: 28, name: "Shaheen", cuisine: "Pakistani", state:"New York", zipcode: 11801, address: "253 S Broadway, Hicksville, NY 11801", latitude: 40.7632299, longitude: -73.5224357, url: "https://shaheencafe.mknxonline.com/index.php/home/menus", rating: 3.8)
Restaurant.create!(id: 29, name: "Teng's", cuisine: "Chinese", state: "New York", zipcode: 11756, address: "2936 Hempstead Tpke, Levittown, NY 11756", latitude: 40.7240359, longitude: -73.5292128, url: "https://tengsrestaurant.com/tk-2021pdf/", rating: 4.6)
Restaurant.create!(id: 30, name: "Shanghai Xpress", cuisine: "Chinese", state:"New York", zipcode: 11801, address: "495 S Broadway, Hicksville, NY 11801", latitude: 40.757263, longitude: -73.5125946, url: "https://www.shanghaixpress.mknxonline.com/index.php/menu", rating: 3.4)
Restaurant.create!(id: 31, name: "Theo Thai Bistro", cuisine: "Thai", state:"New York", zipcode: 11714, address: "621 Hicksville Rd, Bethpage, NY 11714", latitude: 40.7415212, longitude: -73.499179, url: "https://www.thetheothaibistro.com/order/", rating: 4.4)
Restaurant.create!(id: 32, name: "Afghan Kitchen 44", cuisine: "Afghan", state:"New York", zipcode: 11743, address: "44 Gerard St, Huntington, NY 11743", latitude: 40.8722863, longitude: -73.4295354, url: "https://www.afghankitchen44.com/menu", rating: 4.8)
Restaurant.create!(id: 33, name: "Clay Oven", cuisine: "Pakistani", state:"New York", zipcode: 11784, address: "1245 Middle Country Rd, Selden, NY 11784", latitude: 40.8633056, longitude: -73.0564441, url: "https://m.facebook.com/ClayOvenHalal/?refid=13&ref=page_internal&__tn__=%2Cg", rating: 4.7)
Restaurant.create!(id: 34, name: "Kabab Platter & Burger", cuisine: "BBQ", state:"New York", zipcode: 11729, address: "297 Bay Shore Rd, Site C, Deer Park, NY 11729", latitude: 40.7441294, longitude: -73.3134084, url: "https://kababburgerplatter.mknxonline.com/menus", rating: 4.4)
Restaurant.create!(id: 35, name: "Jalapeno Shack", cuisine: "Mexican", state:"New York", zipcode: 11743, address: "340 W Jericho Turnpike, Huntington, NY 11743", latitude: 40.8283011, longitude: -73.4273461, url: "http://www.jalapenoshack.com/", rating: 4.6)
Restaurant.create!(id: 36, name: "La Estacion", cuisine: "Hispanic", state:"New York", zipcode: 11717, address: "22 1st Ave, Brentwood, NY 11717", latitude: 40.7794908, longitude: -73.2516487, url: "https://www.laestaciondeli.com/", rating: 4.5)
Restaurant.create!(id: 37, name: "Mariam's Cafe", cuisine: "Mixed Fusion", state:"New York", zipcode: 11735, address: "1005 Fulton St, Ste, A, Farmingdale, NY 11735", latitude: 40.7250595, longitude: -73.4351263, url: "https://www.facebook.com/396955624492286/posts/511091156412065/", rating: 4.8)
Restaurant.create!(id: 38, name: "Red Chilli", cuisine: "Pakistani", state:"New York", zipcode: 11784, address: "1228 Middle County Rd, Selden, NY 11784", latitude: 40.861555, longitude: -73.0581247, url: "https://halalredchilliny.com/menu", rating: 3.9)
Restaurant.create!(id: 39, name: "Salah's Halal Food", cuisine: "Fast Food", state:"New York", zipcode: 11725, address: "95 Commack Rd, Commack, NY 11725", latitude: 40.8405513, longitude: -73.2960765, url: "http://www.salahshalalfood.com/", rating: 4.5)
Restaurant.create!(id: 40, name: "Taheni", cuisine: "Mediterranean", state:"New York", zipcode: 11215, address: "224 4th Ave, Brooklyn, NY 11215", latitude: 40.6774022, longitude: -73.9855732, url: "https://www.taheni.com/order-online", rating: 4.3)
Restaurant.create!(id: 41, name: "Zaza Japan", cuisine: "Japanese", state:"New York", zipcode: 11731, address: "4000 Jericho Turnpike #9, East Northport, NY 11731", latitude: 40.8390908, longitude: -73.318113, url: "http://www.zazajapan.com/", rating: 4.2)
Restaurant.create!(id: 42, name: "Aroma Indian Cuisine", cuisine: "Indian", state:"New York", zipcode: 11374, address: "6340 Woodhaven Blvd, Queens, NY 11374", latitude: 40.7232474, longitude: -73.8707389, url: "https://www.orderaromaindian.com/", rating: 4.3)
Restaurant.create!(id: 43, name: "Chapli & Chips", cuisine: "BBQ", state:"New York", zipcode: 11004, address: "257-03 Hillside Avenue, Queens, NY 11004", latitude: 40.7369962, longitude: -73.7130627, rating: 4.6) #no url
Restaurant.create!(id: 44, name: "Chicken N Shakes", cuisine: "Fast Food", state:"New York", zipcode: 11365, address: "183-16 Horace Harding Expy, Queens, NY 11365", latitude: 40.7393607, longitude: -73.7925301, url: "https://www.chickennshakes.com/", rating: 4)
Restaurant.create!(id: 45, name: "Chicky's", cuisine: "Fast Food", state:"New York", zipcode: 11426, address: "248-43 Jericho Turnpike, Jamaica, NY 11426", latitude: 40.7265821, longitude: -73.7166846, url: "http://places.singleplatform.com/chickys-5/menu?ref=google", rating: 4.6)
Restaurant.create!(id: 46, name: "Don Chingri", cuisine: "Thai", state: "New York", zipcode: 11103, address: "30-78 Steinway St, 1st Floor, Queens, NY 11103", latitude: 40.7620241, longitude: -73.9189929, url: "https://www.chingrirestaurant.us/", rating: 4.2)
Restaurant.create!(id: 47, name: "Doodh Patti", cuisine: "Fast Food", state: "New York", zipcode: 11354, address: "192-08 Northern Blvd, Queens, NY 11354", latitude: 40.7576221, longitude: -73.7912151, rating: 4) #no url
Restaurant.create!(id: 48, name: "Eternity", cuisine: "Indian", state: "New York", zipcode: 11415, address: "120-35 83rd Ave, Queens, NY 11415", latitude: 40.7086799, longitude: -73.8333795, url: "http://eternitytheflavorlibrary.com/", rating: 4.4)
Restaurant.create!(id: 49, name: "Flames", cuisine: "Fast Food", state: "New York", zipcode: 11416, address: "104-05 101st Ave, Queens, NY 11416", latitude: 40.6864934, longitude: -73.8410396, url: "https://www.flamesqueens.com/?utm_source=gmb&utm_medium=website", rating: 4.2)
Restaurant.create!(id: 50, name: "Hot Peppers", cuisine: "Mexican", state: "New York", zipcode: 11364, address: "78-33 Springfield Blvd, Queens, NY 11364", latitude: 40.7364439, longitude: -73.749041, url: "http://hotpeppersinc.com/", rating: 4.5)
Restaurant.create!(id: 51, name: "Kabab King", cuisine: "Pakistani", state: "New York", zipcode: 11372, address: "7301 37th Rd, Queens, NY 11372", latitude: 40.7473319, longitude: -73.8966993, url: "http://kababking.com/", rating: 3.6)
Restaurant.create!(id: 52, name: "Nur Thai", cuisine: "Thai", state: "New York", zipcode: 11374, address: "63-32 Woodhaven Blvd, Queens, NY 11374", latitude: 40.7235219, longitude: -73.8710603, url: "https://www.ordernurthai.com/", rating: 4.3)
Restaurant.create!(id: 53, name: "Off the Bone", cuisine: "Mediterranean", state: "New York", zipcode: 11361, address: "213-02 42nd Ave, Queens, NY 11361", latitude: 40.7624173, longitude: -73.7732789, url: "https://off-the-bone-restaurant.business.site/?m=true", rating: 4)
Restaurant.create!(id: 54, name: "Sheikh Shack", cuisine: "American", state: "New York", zipcode: 11432, address: "82-37C 164th St, Queens, NY 11432", latitude: 40.7182708, longitude: -73.8055399, url: "https://www.clover.com/online-ordering/sheikh-shack-jamaica", rating: 4.6)

# loop through all restaurants and add latitude and longitude
Restaurant.all.each do |restaurant|

	# get the address of the restaurant
	address = restaurant.address
	if(restaurant&.latitude.nil? || restaurant&.longitude.nil?) then
		# get the latitude and longitude of the restaurant
		coordinates = Geocoder.coordinates(address)

		# update the restaurant with the latitude and longitude
		restaurant.update(latitude: coordinates[0], longitude: coordinates[1])
	end
	
end

p "Created #{Restaurant.count} restaurants"

100.times do |index|
  User.create!(id: index + 1, name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password, activated: true)
	HalalItem.create!(id: index + 1, name: Faker::Food.dish, restaurant_id: Restaurant.all.sample(1)[0].id, description: Faker::Food.description, verification: Faker::Food.ingredient, vegan: Faker::Boolean.boolean, gluten_free: Faker::Boolean.boolean, vegetarian: Faker::Boolean.boolean)
	Review.create!(id: index + 1, restaurant_id: Restaurant.all.sample(1)[0].id, halal_item_id: HalalItem.all.sample(1)[0].id, user_id: User.all.sample(1)[0].id, date_of_review: Faker::Date.between(from: '2014-09-23', to: '2021-09-25'), content: Faker::Restaurant.review, rating: Faker::Number.between(from: 1, to: 5))
end

# Main user for testing
User.create!(id: 101, name: "Test User", email: "testing@gmail.com", password: "password", admin: true, activated: true)
p "Created #{User.count} users"