puts "Cleaning database..."
Restaurant.destroy_all

restaurant_attributes = []

restaurant_categories = ["chinese", "italian", "japanese", "french", "belgian"]

puts 'Creating 10 valid restaurants...'
10.times do
  restaurant_attributes << {
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: restaurant_categories.sample
  }
end

Restaurant.create!(restaurant_attributes)
puts 'Finished creating 10 valid restaurants!'
