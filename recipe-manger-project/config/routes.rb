Rails.application.routes.draw do
  resources :analytics
  resources :users
  resources :ingredients
  resources :recipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
