Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users/registrations"}

  root to: 'pages#home'
  resources :matches, only: [:index, :create, :update]
  resources :interests, only: [:index, :create]
  resources :profiles, only: [:index, :show] do
    member do # 'profiles/:id'
      post "invite"
    end
  end
  get '.well-known/acme-challenge/hwrKZIDH1lBqaTenfyLQ9LrVjW832Kn-DjBjBJ0libk', to: 'pages#first'
  get '.well-known/acme-challenge/mSBCRNz594tklgTCHG3iJFZlWG6qTq-jrbmWJwKAZB0', to: 'pages#second'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  # get 'pages/index', to: 'pages#index'
  # get '/profile/:id', to: 'pages#profile'
  # post '/choose', to: 'pages#choose'
  # post '/matches/accept', to: 'matches#accept'
  # post '/matches/decline', to: 'matches#decline'
