puts "Cleaning db..."
Employee.destroy_all

puts "Creating employees..."
10_000.times do
  Employee.create(
    name: Faker::Name.name,
    position: ["Accountat", "Chief Executive Officer (CEO)", "Chief Financial Officer (CFO)", "Engineer"].sample,
    office: ["London", "Tokyo", "New York", "Singapore"].sample,
    age: rand(20..70),
    start_date: rand(1..1000).days.ago.to_date
  )
end

puts "#{Employee.count} employees created!"
puts "Finished!"
