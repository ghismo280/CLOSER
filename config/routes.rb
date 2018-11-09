Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/index', to: 'pages#index'
  get '/profile/:id', to: 'pages#profile'
  get '/matches', to: 'pages#matches'
  post '/choose', to: 'pages#choose'
  post '/accept', to: 'pages#accept'
  post '/decline', to: 'pages#decline'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
