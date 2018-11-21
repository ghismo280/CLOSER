Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users/registrations"}

  root to: 'pages#home'
  get '/.well-known/acme-challenge/ZDLw-g3eCUX8dmLDu7vRJqepIUANQPcDxivEOE_gNcE', to: 'pages#letsencrypt'
  resources :matches, only: [:index, :create, :update]
  resources :interests, only: [:index, :create]
  resources :profiles, only: [:index, :show] do
    member do # 'profiles/:id'
      post "invite"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
