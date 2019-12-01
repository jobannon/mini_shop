# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@target = Merchant.create!(name: "Target", address: "100 Target way", city: 'denver', state: "colorado", zip: 80023) 
@walmart = Merchant.create!(name: "Walmart", address: "100 Walmart way", city:"tulsa", state: 'ok', zip: 80021) 
