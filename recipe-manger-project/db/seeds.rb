# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

RecipeIngredient.destroy_all
UserRecipe.destroy_all
#
User.destroy_all
Ingredient.destroy_all
Recipe.destroy_all

crystal = User.create(name: 'Crystal')
zach = User.create(name: 'Zach')
ben = User.create(name: 'Ben')
sarah = User.create(name: 'Sarah')
kevin = User.create(name: 'Kevin')
jack = User.create(name: 'Jack')

potato = Ingredient.create(name: 'Potato')
cheese = Ingredient.create(name: 'Cheese')
spaghetti = Ingredient.create(name: 'Spaghetti')
tomato = Ingredient.create(name: 'Tomato')
garlic = Ingredient.create(name: 'Garlic')
milk = Ingredient.create(name: 'Milk')
rice = Ingredient.create(name: 'Rice')
tofu = Ingredient.create(name: 'Tofu')
steak = Ingredient.create(name: 'Steak')
jellybeans = Ingredient.create(name: 'Jellybeans')
soy_sauce = Ingredient.create(name: 'Soy Sauce')
ground_beef = Ingredient.create(name: 'Ground Beef')
tomato_paste = Ingredient.create(name: 'Tomato Paste')
olive_oil = Ingredient.create(name: 'Olive Oil')

baked_potato = Recipe.create(name: 'Baked Potato', directions: 'Bake potato', html_link: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-microwave-baked-potato-horizontal-1544566025.png")
baked_cheese = Recipe.create(name: 'Baked Cheese', directions: 'Bake cheese forever', html_link: "https://images-gmi-pmc.edge-generalmills.com/b6148b43-70ec-4ebe-b46d-c80b026e1a83.jpg")
milk_steak = Recipe.create(name: 'Milk Steak', directions: 'Cook steak with milk, add jellybeans. Garnish with povery and sadness', html_link: "https://i.redd.it/7ttjgh0g81pz.jpg")
rice_and_tofu = Recipe.create(name: 'Tofu and Rice', directions: 'Make rice and tofu. Serve with soy sauce.', html_link: "https://www.noracooks.com/wp-content/uploads/2018/05/IMG_3470.jpg")
spaghetti_and_meat_balls = Recipe.create(name: 'Spaghetti & Meatballs', directions: 'Make meat into ball. Cook meat. Make spaghetti sauce and spaghetti. Combine and serve. wa~la~', html_link: "https://hips.hearstapps.com/del.h-cdn.co/assets/17/39/1506456062-delish-spaghetti-meatballs.jpg")

RecipeIngredient.create(recipe: baked_potato, ingredient: potato)
RecipeIngredient.create(recipe: baked_cheese, ingredient: cheese)
RecipeIngredient.create(recipe: milk_steak, ingredient: milk)
RecipeIngredient.create(recipe: milk_steak, ingredient: steak)
RecipeIngredient.create(recipe: milk_steak, ingredient: jellybeans)
RecipeIngredient.create(recipe: rice_and_tofu, ingredient: rice)
RecipeIngredient.create(recipe: rice_and_tofu, ingredient: tofu)
RecipeIngredient.create(recipe: rice_and_tofu, ingredient: soy_sauce)
RecipeIngredient.create(recipe: spaghetti_and_meat_balls, ingredient: ground_beef)
RecipeIngredient.create(recipe: spaghetti_and_meat_balls, ingredient: tomato)
RecipeIngredient.create(recipe: spaghetti_and_meat_balls, ingredient: tomato_paste)
RecipeIngredient.create(recipe: spaghetti_and_meat_balls, ingredient: garlic)
RecipeIngredient.create(recipe: spaghetti_and_meat_balls, ingredient: tomato)
RecipeIngredient.create(recipe: spaghetti_and_meat_balls, ingredient: olive_oil)
RecipeIngredient.create(recipe: spaghetti_and_meat_balls, ingredient: spaghetti)


UserRecipe.create(user: crystal, recipe: baked_potato)
UserRecipe.create(user: crystal, recipe: baked_cheese)
UserRecipe.create(user: kevin, recipe: milk_steak)
UserRecipe.create(user: zach, recipe: baked_cheese)
UserRecipe.create(user: zach, recipe: baked_cheese)
UserRecipe.create(user: sarah, recipe: milk_steak)
UserRecipe.create(user: ben, recipe: baked_cheese)
