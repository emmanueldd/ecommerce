Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :products
  resources :merchants
  resources :order_has_products, only: [:create]
  resources :orders, only: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
end
