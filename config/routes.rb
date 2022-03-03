Rails.application.routes.draw do
  devise_for :users
  root to: 'orders#index'

  resources :orders, only: [:index, :new, :show, :create]
end
