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

  def self.get_count_by_recipe_id(recipe_id)
    self.all.select{ |user_recipe| user_recipe.recipe_id == recipe_id}.count
  end

  def self.get_all_recipe_ids
    self.all.map{ |user_recipe| user_recipe.recipe_id}
  end

  def self.most_popular_recipe_id
    recipe_ids = UserRecipe.get_all_recipe_ids
    recipe_ids.uniq.max_by{ |i| recipe_ids.count( i ) }
  end

end
