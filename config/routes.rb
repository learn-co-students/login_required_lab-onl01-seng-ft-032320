Rails.application.routes.draw do
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get "/secret" => "secrets#show"
  get "/welcome" => "secrets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
