Rails.application.routes.draw do
  #users
  resources :users

  #sessions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', :via => :delete

  #categories
  resources :categories, :only => [:index, :show]

  #posts
  resources :posts

  #Root
  root :to => 'categories#index'
end
