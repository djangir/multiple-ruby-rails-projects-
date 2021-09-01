Rails.application.routes.draw do
  resources :carts
  root 'store#index', as: 'store'
  resources :products
end
