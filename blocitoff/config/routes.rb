Rails.application.routes.draw do

  get 'welcome/index'
  devise_for :users

  resources :users, only: [:show] do
    resources :items, only: [:create]
  end

  root 'users#show'



end
