Rails.application.routes.draw do
  get 'accueil', to: 'accueil#index'
  get 'team', to: 'team#index'
  get 'contact', to: 'contact#index'
  
end
