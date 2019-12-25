Rails.application.routes.draw do
  devise_for :users
  root 'forums#index'
  resources :users
  resources :forums
  resources :posts
end