Rails.application.routes.draw do
  resources :project_planifications
  root 'static_pages#home'
  get 'static_pages/home'
  root 'users#new'
  devise_for :users, controllers: { registrations: "registrations" }
  resources :projects do
    resources :project_communications
    resources :project_evaluations
    resources :project_implementations
    resources :project_connections
    resources :project_reviews

  end

  resources :methodologies do
    resources :methodology_reviews
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
