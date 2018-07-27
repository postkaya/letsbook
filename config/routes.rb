Rails.application.routes.draw do
  get 'working_hours/index'

  get 'working_hours/new'

  get 'working_hours/create'

  default_url_options host: 'https://localhost:3000'
  root 'home#index'
  
  namespace :auth do
    get 'account/avatar'
    patch 'account/avatar', to: 'account#upload_avatar'
    get 'account/deactivate'
  end

  resources :providers do
    resource :media, only: [:new, :create]
    resource :social
    resource :payments
    resource :working_hours
    resource :gallery
  end

  get 'pages/search'

  # path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'new' }
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  # resources :password, only: [:edit, :update]
  
  get 'pages/create'
  get 'pages/media'
  get 'pages/social'
  get 'pages/payment'
  get 'pages/finish'
end
