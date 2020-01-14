Rails.application.routes.draw do

  resources :items, only: [:index, :show, :create]
  resources :users, only: [:create]
  resources :user_items, only: [:index, :show, :create, :destroy]

  post "login", to: "authentication#login"
  get "profile", to: "users#profile"
  post "cart", to: "user_items#cart"
  get "show", to: "user_items#show"
  # delete "delete/:id", to: "user_items#destroy"
  # get "store", to: "index#store"
end
