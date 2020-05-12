Rails.application.routes.draw do
  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  # devise_for :users
  # root to: 'events#index'
  # resources :events, only: [:new, :create, :show]
  # resources :users, only: [:show]
end
