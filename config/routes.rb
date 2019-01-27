Rails.application.routes.draw do
  root 'categories#index'
  resources :categories, only: [:show], path: '' do
    resources :products, only: [:show], path: ''
  end
end
