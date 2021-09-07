Rails.application.routes.draw do
  resources :shots
  root 'shots#index'
  devise_for :users
end
