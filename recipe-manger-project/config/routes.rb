Rails.application.routes.draw do
  resources :users
  resources :ingredients
  resources :recipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'recipe_ingredients/:id', to: 'recipes#ingredients_form', as: 'ingredients_form'
  post 'recipe_ingredients/:id', to: 'recipes#change_recipe_ingredients'
end
