Rails.application.routes.draw do

  resources :items, only: [:index, :show, :create]
  resources :users, only: [:create]
  resources :user_items, only: [:index, :show, :create]

  post "login", to: "authentication#login"
  get "profile", to: "users#profile"
  post "cart", to: "user_items#cart"
  get "cart", to: "user_items#cart"
end
