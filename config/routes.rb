Rails.application.routes.draw do

 get 'contact', to: 'contact#index' 
 get 'accueil', to: 'accueil#index'
 get 'team', to: 'team#index'
 resources :gossips
  
end
