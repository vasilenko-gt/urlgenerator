Rails.application.routes.draw do

  devise_for :users

  resources :users do
    resources :urls do
      get :share
    end
  end

  resources :urls

  resources :urls, only: :create

  get 'welcome',   to: 'welcome#index'

  get '/:short_url',      to: 'urls#show'
  get 'short/:short_url', to: 'urls#short', as: :short

  root to: 'welcome#index'

end

