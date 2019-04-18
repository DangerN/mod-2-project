class Recipe < ApplicationRecord
  # has_and_belongs_to_many :users
  def self.most_popular
    # all_recepis = self.all
    # count_recips = Hash.new(0)
    # all_recepis.each do |recipe|
    #   count_recips[recipe] = UserRecipe.get_count_by_recipe_id(recipe.id)
    # end
    # count_recips.max_by{|k,v| v}.first

    # self.all.map
    self.find(UserRecipe.most_popular_recipe_id)
  end
end
