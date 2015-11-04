Rails.application.routes.draw do

  get 'welcome/index'
  devise_for :users

  resources :items, only: [:index]

  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end

  root 'users#show'



end
