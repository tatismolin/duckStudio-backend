Rails.application.routes.draw do

  resources :items, only: [:index, :show, :create]
  resources :users, only: [:create]
  resources :user_items, only: [:index, :show, :create]

  post "login", to: "authentication#login"
  get "profile", to: "users#profile"
  post "cart", to: "user_items#cart"
  get "show", to: "user_items#show"
  delete "delete", to: "user_items#delete"
  # get "store", to: "index#store"
end
