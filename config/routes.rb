Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
 get 'contact', to: 'contact#index' 
 get 'accueil', to: 'accueil#index'
 get 'team', to: 'team#index'
 resources :gossips
 resources :users
 resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  
end
