Rails.application.routes.draw do
  resources :tweats
  root 'tweats#index'
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
end
