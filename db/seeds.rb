# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "creating fake users"

User.create(first_name: "John", last_name: "Smith", current_job: "Sales Executive", bio: "5 years sales experience")

User.create(first_name: "Chandler", last_name: "Bing", current_job: "Data Processor", bio: "Expert in data")

User.create(first_name: "Rachel", last_name: "Green", current_job: "Assistant Buyer", bio: "Loves fashion")

User.create(first_name: "Ross", last_name: "Geller", current_job: "Professor", bio: "Loves Dinosaurs")

User.create(first_name: "Joey", last_name: "Tribiani", current_job: "Actor", bio: "Drake Ramore on Days of Our Lives")

puts "4 fake users created..."