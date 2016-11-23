Rails.application.routes.draw do

  root 'users#welcome'

  resources :venues
  resources :trips
  resources :users
  resources :categories

  get '/signup' => 'users#new'
    post '/users' => 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
