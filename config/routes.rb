Rails.application.routes.draw do
  devise_for :users
  resources :line_items
  resources :carts
  root 'store#index', as: 'store'
  resources :products
end
