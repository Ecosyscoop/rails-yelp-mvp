# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all

puts "creating 10 restaurants"
10.times do
  restaurant = Restaurant.create!(
    name: Faker::Name.first_name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Faker::Category.category
  )
  puts "#{restaurant.name} created."
end
puts "Done!"

# run rails c and check in the rails console to see what fake data has been generated
