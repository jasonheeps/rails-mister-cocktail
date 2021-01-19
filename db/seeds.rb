require 'open-uri'
require 'json' # I think this is pre-added by default, right?

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

Ingredient.create!(name: "lemon")
Ingredient.create!(name: "ice")
Ingredient.create!(name: "mint leaves")
Ingredient.create!(name: "brown sugar")
Ingredient.create!(name: "gin")

Cocktail.create!(name: "Moscow Mule")
Cocktail.create!(name: "Long Island Ice Tea")
Cocktail.create!(name: "Cuba Libre")
Cocktail.create!(name: "Tequila Sunrise")

5.times do
  Dose.create!(
    cocktail_id: Cocktail.all.sample.id,
    ingredient_id: Ingredient.all.sample.id,
    description: 'add a lot of this!'
  )
end

# reading from a JSON does not work and I don't know why:
# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredients = JSON.parse(File.read(url))[:drinks]
# ingredients.each do |ingredient|
#   Ingredient.create(name: ingredient[:strIngredient1])
# end
