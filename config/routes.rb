Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'
  get '/login' => 'sessions#new'
  get '/logins' => 'sessions#index'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/secrets' => 'secrets#show'
  root 'sessions#new'
end
