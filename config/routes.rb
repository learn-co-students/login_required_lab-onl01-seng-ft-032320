Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "sessions#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  post "/destroy", to: "sessions#destroy"
  # get "/welcome", to: "sessions#show"

  get "/secret", to: "secrets#show"
end
