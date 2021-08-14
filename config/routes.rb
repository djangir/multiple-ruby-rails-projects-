Rails.application.routes.draw do
  resources :microposts
  resources :users
  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'contact' => 'static_pages#contact'
  get 'signup' => 'users#new'
end
