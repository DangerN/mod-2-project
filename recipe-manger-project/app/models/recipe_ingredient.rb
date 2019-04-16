class RecipeIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  def ingredient
    Ingredient.all.find{|ingredient| self.ingredient_id == ingredient.id}
  end

  def ingredient_name
    ingredient.name
  end
end
