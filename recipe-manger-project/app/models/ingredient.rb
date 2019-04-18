class Ingredient < ApplicationRecord


  def self.in_most_recipes
    self.find(RecipeIngredient.most_popular_ingredient_id)
  end

  # def self.most_popular
  #   find(Recipe.most_popular.ingredient_id)
  # end
end
