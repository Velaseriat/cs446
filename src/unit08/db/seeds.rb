# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pet.create(name: "Rover", age: "6 years", description: "Brown doge", pet_type: :dog, pet_status: :available);
Pet.create(name: "Not Rover", age: "600 years", description: "Brown cate", pet_type: :cat, pet_status: :available);
Pet.create(name: "Bunny", age: "62 seconds", description: "Brown bunnie", pet_type: :bunny, pet_status: :available);
Pet.create(name: "Roger", age: "6 months", description: "Brown doge", pet_type: :dog, pet_status: :available);
Pet.create(name: "Rover", age: "6 years", description: "Red doge", pet_type: :cat, pet_status: :available);
Pet.create(name: "Hey", age: "6 eons", description: "Purple doge", pet_type: :bunny, pet_status: :available);

Shelter.create(name: "Rowen Knights Shelter");