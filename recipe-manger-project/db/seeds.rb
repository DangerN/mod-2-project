# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

RecipeIngredient.destroy_all
UserRecipe.destroy_all

User.destroy_all
Ingredient.destroy_all
Recipe.destroy_all

crystal = User.create(name: 'Crystal')

potato = Ingredient.create(name: 'Potato')
cheese = Ingredient.create(name: 'Cheese')


baked_potato = Recipe.create(name: 'Baked Potato', directions: 'Bake potato')
baked_cheese = Recipe.create(name: 'Baked Cheese', directions: 'Bake cheese forever')


RecipeIngredient.create(recipe: baked_potato, ingredient: potato)

UserRecipe.create(user: crystal, recipe: baked_potato)
UserRecipe.create(user: crystal, recipe: baked_cheese)
