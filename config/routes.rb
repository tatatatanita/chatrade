Rails.application.routes.draw do
  devise_for :users
  root 'thread#index'
  resources :users
end