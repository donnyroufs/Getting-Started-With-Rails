Rails.application.routes.draw do
  get 'welcome/index'

  # Creates a REST resource, which basically means all CRUD enpoints.
  # resources :articles
  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
