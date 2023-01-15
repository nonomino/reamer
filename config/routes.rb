Rails.application.routes.draw do
  resources :tags
  resources :folders do
      resources :documents
  end
  resources :obj_types
  resources :documents
  devise_for :users
  root to: 'onboard#index'
end
