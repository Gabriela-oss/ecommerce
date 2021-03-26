Rails.application.routes.draw do

  resources :products
  resources :categories
  devise_for :admins
  root to: 'home#index'
end
