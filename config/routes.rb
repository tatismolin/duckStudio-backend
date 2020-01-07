Rails.application.routes.draw do

  resources :items, only: [:index, :show, :create]

  resources :users, only: [:create]
  post "login", to: "authentication#login"
  get "profile", to: "users#profile"

end
