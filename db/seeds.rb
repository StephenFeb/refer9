# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating fake profiles"

Profile.create(name: "John Smith", job_title: "Sales Executive", work_experience: "5 years sales experience", skills: "Sales, Marketing")

Profile.create(name: "Mark Davies", job_title: "FInancial Advisor", work_experience: "5 years financial advice", skills: "Financial Advice")

Profile.create(name: "Rachel Green", job_title: "Fashion Executive", work_experience: "5 years fashion marketing", skills: "Sales, Marketing")

Profile.create(name: "Chandler Bing", job_title: "Executive", work_experience: "5 years excel", skills: "Excel, CRM Systems")

puts "4 fake profiles created..."