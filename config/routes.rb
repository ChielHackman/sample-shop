Rails.application.routes.draw do
  root 'categories#index'
  resources :categories, only: [:show]
end
