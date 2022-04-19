# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
mc_do = { name: 'Mac Donalds', address: 'Place de La Part Dieu', category: 'french' }
woko = { name: 'Woko', address: 'La Part Dieu, 3ème étage', category: 'chinese' }
pizza_tito = { name: 'Pizza Tito', address: 'Place de la République', category: 'italian' }
burger_king = { name: 'Burger King', address: 'Avenue Felix Faure, 69007 Lyon', category: 'french' }
kfc = { name: 'KFC', address: 'Centre Commercial Confluence', category: 'belgian' }

[mc_do, woko, pizza_tito, burger_king, kfc].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
