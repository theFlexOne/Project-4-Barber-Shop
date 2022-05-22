Rails.application.routes.draw do
  resources :orders
  resources :users
  resources :products
  resources :services
  resources :clients
  resources :appointments
  resources :barbers

  post "/signup", to: "users#create"
  get "/me", to: "users#show"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
