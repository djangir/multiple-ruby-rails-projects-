Rails.application.routes.draw do
  resources :cart_items
  resources :carts
  resources :instruments
  devise_for :users
  root 'instruments#index'
end
