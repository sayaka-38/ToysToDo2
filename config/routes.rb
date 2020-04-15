Rails.application.routes.draw do
  root 'top#index'
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create]
end
