Rails.application.routes.draw do
  root 'items#home'

  resources :items, only: [:create, :update, :destroy]

  post '/categories', to: 'categories#create'
end
