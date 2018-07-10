Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions'}
  root "posts#index"

  resources :posts
  resources :albums, only: [:show]
  resources :categories
  resources :photos
end
