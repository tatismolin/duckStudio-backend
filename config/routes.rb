Rails.application.routes.draw do

  resources :items, only: [:index, :show, :create, :update]
  resources :users, only: [:create]
  resources :user_items, only: [:index, :show, :create, :destroy, :update]

  post "login", to: "authentication#login"
  get "profile", to: "users#profile"
  # post "cart", to: "user_items#cart"
  # get "quantities", to: "user_items#quantities"
  post "charges", to: "charges#create"
end

