Rails.application.routes.draw do
  devise_for :users
  root 'top#index'

  resources :users, only: [:edit, :update]
  resources :tags, only: [:new, :create]

end
