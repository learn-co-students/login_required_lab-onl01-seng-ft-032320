Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions
  resources :secrets
  post 'destroy', to: 'sessions#destroy'
  get 'show', to: 'secrets#show'
end
