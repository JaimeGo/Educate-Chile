Rails.application.routes.draw do

  devise_for :users
  root 'home#index'


  resources :projects do
    resources :project_communications
    resources :project_evaluations
    resources :project_implementations
    resources :project_connections
    resources :project_reviews
  end
  
  resources :methodology_reviews
  resources :methodologies
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
