Rails.application.routes.draw do
  resources :project_communications
  resources :project_evaluations
  resources :project_implementations
  resources :project_connections
  resources :methodology_reviews
  resources :methodologies
  resources :project_reviews
  resources :projects
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
