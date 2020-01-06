Rails.application.routes.draw do

  resources :items, only: [:index, :show, :create]

  resources :users, only: [:create]
  post "login", to: "authentication#login"

end
