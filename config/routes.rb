Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/pages', to: 'pages#index'
  get '/profile', to: 'pages#profile'
  get '/matches', to: 'pages#matches'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
