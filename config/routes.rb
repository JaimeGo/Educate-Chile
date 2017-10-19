Rails.application.routes.draw do
  root 'static_pages#home'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users

  resources :projects do
    resources :project_connections do
      resources :methodology_evaluations
    end
    resources :project_communications
    resources :project_evaluations
    resources :project_implementations
    resources :project_reviews
    resources :methodologies
  end

  resources :methodologies do
    resources :methodology_reviews
  end
  resources :users do
    resources :projects
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
