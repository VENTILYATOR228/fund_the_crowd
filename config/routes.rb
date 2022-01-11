Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :campaigns
  resources :areas
  resources :bonuses, exept: [:show, :index]
  root 'pages#home'
  get 'admin', to: 'pages#admin'
end
