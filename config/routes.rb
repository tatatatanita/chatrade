Rails.application.routes.draw do
  devise_for :users
  root 'posts#new'
  resources :users
  resources :forums do
    resources :posts
  end
end