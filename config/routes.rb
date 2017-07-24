Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  get 'welcome/index'

  resources :categories
#  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :clients
end