puts "Clearing database..."
Hotel.destroy_all

puts "Creating hotels..."

hotels_attributes = [ { name: "Name", address: "Address" }, { name: "Name", address: "Address" }, ]

Hotel.create!(hotels_attributes)

puts "Created #{Hotel.count} hotels"
