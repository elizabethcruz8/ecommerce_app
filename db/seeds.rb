# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Elizabeth", email: "ecruz@email.com", password: "password")

Shoe.create!(name: "Nike Air VaporMax Plus", price: 190, description: "1998 design,revolutionary VaporMax Air technology with a full-length Air-Sole unit" )

Order.create!(user_id: "1", subtotal: "190", tax:"10.25", total: "210")

Image.create!(url: "https://www.flightclub.com/media/catalog/product/cache/1/image/1600x1140/9df78eab33525d08d6e5fb8d27136e95/8/0/803599_01.jpg", shoe_id: 1)