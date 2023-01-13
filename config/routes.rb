Rails.application.routes.draw do
  resources :tags
  resources :folders
  resources :obj_types
  resources :documents
  devise_for :users
  root to: 'onboard#index'
end
