Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  get 'welcome/index'

get '/categories1/:id', to: 'categories#show1'  
  resources :categories
#  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :clients
end