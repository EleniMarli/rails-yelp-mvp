# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

restaurant_names = [
  'The Gourmet Palette',
  'Savory Haven',
  'Fusion Delights',
  'Urban Spice Junction',
  'Tranquil Bites Café'
]

addresses = [
  '123 Main Street, Cityville, State',
  '456 Oak Avenue, Townsville, State',
  '789 Maple Lane, Villagetown, State',
  '101 Pine Road, Hamletville, State',
  '202 Cedar Street, Suburbia, State'
]

categories = [
  'chinese',
  'italian',
  'japanese',
  'french',
  'belgian'
]

restaurant_names.each_with_index do |rest, index|
  Restaurant.create(name: rest, address: addresses[index], category: categories.sample)
end
