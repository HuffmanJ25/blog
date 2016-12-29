Rails.application.routes.draw do

  root to: 'articles#index'
  get 'sessions/new'

  get 'users/new'



  resources :articles do
    resources :comments
  end

  resources :tags

  get '/resources', to: 'resource#show'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
