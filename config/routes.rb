Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :matches, only: [:index, :create]
  post '/matches/accept', to: 'matches#accept'
  post '/matches/decline', to: 'matches#decline'
  resources :interests, only: [:index, :create, :delete]
  resources :profiles, only: [:index, :show]
  post 'profiles/:id', to: 'profiles#invite'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  # get 'pages/index', to: 'pages#index'
  # get '/profile/:id', to: 'pages#profile'
  # post '/choose', to: 'pages#choose'
