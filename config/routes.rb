Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  namespace :post do
    resources :comments
  end
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
 
root 'posts#index'
end
