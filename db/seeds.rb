# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts("Seeding the data into the Database......")
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Employee.create!(emp_name: 'a', emp_email: 'a@gmail.com', mobile_number: 1234, emp_country: 'India', emp_state: 'Haryana', emp_city: 'Panipat')
Employee.create!(emp_name: 'b', emp_email: 'b@gmail.com', mobile_number: 1235, emp_country: 'India', emp_state: 'Haryana', emp_city: 'Panipat')
Employee.create!(emp_name: 'c', emp_email: 'c@gmail.com', mobile_number: 1236, emp_country: 'India', emp_state: 'Haryana', emp_city: 'Panipat')
Employee.create!(emp_name: 'd', emp_email: 'd@gmail.com', mobile_number: 1237, emp_country: 'India', emp_state: 'Haryana', emp_city: 'Panipat')

puts("Seeding Operation is complete!")	