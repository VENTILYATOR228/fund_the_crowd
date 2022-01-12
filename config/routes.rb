Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :campaigns do
    resources :bonuses
  end
  resources :areas
  root 'pages#home'
  get 'admin', to: 'pages#admin'
end
