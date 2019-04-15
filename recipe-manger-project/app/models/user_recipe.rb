class UserRecipe < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  # def recipe_name
  #   # @recipes = Recipe.all.select do  |recipe|
  #   #   recipe.id = self.recipe_id
  #   # end.map(&:name)
  #
  #
  # end

  def self.recipe_names(user_id)
    UserRecipe.all.select do |ur|
      ur.user_id == user_id
    end.map do |ur|
      Recipe.find(ur.recipe_id).name
    end
  end
end
