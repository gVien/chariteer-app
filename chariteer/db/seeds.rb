# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Volunteer.create( first_name: "Teresa", last_name: "Nesteby", email: "t@gmail.com", password: "1234")
Organization.create(name: "Red Cross", contact_email: "rc@gmail.com", non_profit: true, password: "1234")
