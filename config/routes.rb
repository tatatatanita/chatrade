Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :users
  resources :forums
  resources :posts
end