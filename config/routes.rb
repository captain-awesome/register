Rails.application.routes.draw do
  resources :blogs
  #resources :users

  devise_for :users

  get '/users', to: 'users#index'
  
  root to: "blogs#index"
end