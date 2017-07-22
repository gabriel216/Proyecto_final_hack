Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  get 'welcome/index'

  resources :categories

  resources :clients
end

