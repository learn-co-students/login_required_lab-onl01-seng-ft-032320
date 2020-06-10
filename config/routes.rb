Rails.application.routes.draw do
  root 'sessions#home'

  resources :secrets, only: [:new, :create]
  resources :sessions, only: [:new, :create]

  get '/secret', to: "secrets#show"
  post '/logout', to: "sessions#destroy"
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
