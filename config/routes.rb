Rails.application.routes.draw do

  devise_for :users
  resources :users
  resources :urls
  resources :urls, only: :create

  get 'welcome',   to: 'welcome#index'

  root to: 'welcome#index'

end