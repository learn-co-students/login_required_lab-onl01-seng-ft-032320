Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'sessions#new'
  get 'secret', to: 'secrets#show'
  post '/', to: 'sessions#create'
  delete '/', to: 'sessions#destroy'
end
