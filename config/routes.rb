Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#new'
  get'/secrets', to: 'secrets#show'
  resources :sessions, only: :create
  get 'destroy', to: 'sessions#destroy'

end
