Rails.application.routes.draw do

  resources :welcomes

  root 'welcome#index'

end
