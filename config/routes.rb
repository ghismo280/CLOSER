Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :matches, only: [:index, :create, :update]
  resources :interests, only: [:index, :create]
  resources :profiles, only: [:index, :show] do
    member do # 'profiles/:id'
      post "invite"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  # get 'pages/index', to: 'pages#index'
  # get '/profile/:id', to: 'pages#profile'
  # post '/choose', to: 'pages#choose'
  # post '/matches/accept', to: 'matches#accept'
  # post '/matches/decline', to: 'matches#decline'
