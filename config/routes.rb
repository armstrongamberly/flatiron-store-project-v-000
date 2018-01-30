Rails.application.routes.draw do

  
  root 'store#index', as: 'store'

  resources :items, only: [:show, :index]
  resources :categories, only: [:show, :index]
  resources :carts
  resources :line_items, only: [:create]
  resources :orders, only: [:show]

  post 'carts/:id/checkout', to: 'carts#checkout', as: 'checkout'

  get '/auth/facebook/callback' => 'sessions#create'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get '/users/sign_out' => 'sessions#destroy'

end