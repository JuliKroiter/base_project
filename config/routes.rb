Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :services, only: [:show]
  resources :portfolios, only: [:show]
  resources :customer_requests, only: [:create]
  resources :subscriptions, only: [:create]

  root to: 'home#index'

  get '/404', to: "errors#not_found"
  get '/422', to: "errors#unacceptable"
  get '/500', to: "errors#internal_error"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
