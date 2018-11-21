# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts 'Cleaning DB...'
Restaurant.destroy_all

puts "Creating Restaurants..."
5.times do
  Restaurant.create!(
    name:         Faker::GameOfThrones.city,
    address:      Faker::Address.full_address,
    category:     ['chinese', 'italian', 'japanese', 'french', 'belgian', 'burger'].sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
end

puts 'Finished !'
