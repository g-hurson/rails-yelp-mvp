# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "02.99.99.99.99" , category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "02.12.34.56.78", category: "italian"}
berliner_kebab = {name: "CHËF - berliner kebap", address: "10 Rue Terme, 69001 Lyon", phone_number: "01.23.34.45.56", category: "belgian"}
mac_do =  {name: "McDonald's", address: "13 Rue de la République, 69001 Lyon", phone_number: "01.11.22.33.44", category: "french"}
mangia_buono =  {name: "Mangia Buono", address: "48 Rue Sergent Blandan, 69001 Lyon", phone_number: "01.00.00.00.99",category: "italian"}

[dishoom, pizza_east, berliner_kebab, mac_do, mangia_buono].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
