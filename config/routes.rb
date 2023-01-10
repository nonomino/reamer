Rails.application.routes.draw do
  resources :documents
  devise_for :users
  root to: 'onboard#index'
end
