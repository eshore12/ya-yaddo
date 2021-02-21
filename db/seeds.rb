puts "Clearing database..."
Hotel.destroy_all

puts "Creating hotels..."

hotels_attributes = [ { name: "Hotel A", address: "123 Street Address" }, { name: "Hotel B", address: "213 Street Address" }, { name: "Hotel C", address: "777 Street Address" }, { name: "Hotel D", address: "389 Street Address" }, { name: "Hotel E", address: "222 Street Address" }, { name: "Hotel F", address: "543 Street Address" }, { name: "Hotel G", address: "990 Street Address" }]

Hotel.create!(hotels_attributes)

puts "Created #{Hotel.count} hotels"
