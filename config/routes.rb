Rails.application.routes.draw do
  root 'categories#index'
  resources :categories, only: [:show]
  resources :products, only: [:show]
end
