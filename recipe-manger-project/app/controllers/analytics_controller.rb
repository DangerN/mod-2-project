class AnalyticsController < ApplicationController
  # before_action :set_analytic, only: [:show, :edit, :update, :destroy]

  # GET /analytics
  # GET /analytics.json
  def index
    @user_count = calculate_user_count
    @recipe_count = calculate_recipe_count
    @ingredient_count = calculate_ingredient_count
    @favorite_recipe = Recipe.most_popular
    @most_used_ingredient = Ingredient.in_most_recipes
    @most_active_user = User.most_active
  end

  #methods to use in index above:
  def calculate_user_count
    User.all.count
  end

  def calculate_recipe_count
    Recipe.all.count
  end

  def calculate_ingredient_count
    Ingredient.all.count
  end

end
