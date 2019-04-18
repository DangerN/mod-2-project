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


  def self.get_all_ingredient_ids
    self.all.map{ |recipe_ingredient| recipe_ingredient.ingredient_id}
  end

  def self.most_popular_ingredient_id
    ingredient_ids = RecipeIngredient.get_all_ingredient_ids
    ingredient_ids.uniq.max_by{ |i| ingredient_ids.count( i ) }
  end

end
