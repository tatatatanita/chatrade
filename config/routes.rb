Rails.application.routes.draw do
  devise_for :users
  root 'threads#index'
  resources :users
  resources :threads
end