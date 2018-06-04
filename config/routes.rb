Rails.application.routes.draw do

  resources :urls
  resources :urls, only: :create

  get 'welcome',   to: 'welcome#index'

  root to: 'welcome#index'

end