Rails.application.routes.draw do
  get 'welcome/index'

  # Creates a REST resource, which basically means all CRUD enpoints.
  resources :articles 

  root 'welcome#index'
end
