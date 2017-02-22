Rails.application.routes.draw do
  root 'items#index'

  get '/sign_up', to: 'users#new'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show, :create]
end
