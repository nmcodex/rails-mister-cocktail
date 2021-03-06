# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients...'
url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_attributes = JSON.parse(open(url).read)["drinks"]
ingredients_attributes.each { |h| h[:name] = h.delete "strIngredient1"}

Ingredient.create!(ingredients_attributes)
puts 'Finished!'

Cocktail.create(name: "Mojito", photo: "image/upload/v1518790475/k7pa5osuhi8z1e8uiyee.jpg")
Cocktail.create(name: "Bloody Mary", photo: "../app/images/bloody_mary.jpg")
