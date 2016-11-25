Rails.application.routes.draw do

  root 'users#welcome'

  resources :venues
  resources :trips
  resources :users
  resources :categories

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  match '/list_venues' => 'venues#get_venues', via: [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
