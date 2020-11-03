Rails.application.routes.draw do
  resources :pages
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
