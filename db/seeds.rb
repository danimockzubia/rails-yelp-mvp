# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french"}
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese"}
bad_restaurant = { name: "Bad Restaurant", address: "Really bad place", category: "italian"}
good_restaurant = { name: "Good Restaurant", address: "Really good place", category: "italian" }
okay_restaurant = { name: "Okay Restaurant", address: "Really okay place", category: "chinese"}
pretty_good_restaurant = { name: "Good Restaurant", address: "Pretty good place", category: "belgian" }


[dishoom, pizza_east, bad_restaurant, good_restaurant, okay_restaurant, pretty_good_restaurant].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
