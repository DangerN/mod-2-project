class RecipeIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe


  def self.ingredient_names(recipe_id)
    RecipeIngredient.all.select do |ri|
      ri.recipe_id == recipe_id
    end.map do |ri|
      Ingredient.find(ri.ingredient_id).name
    end
  end

end
