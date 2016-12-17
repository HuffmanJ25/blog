Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root to: 'articles#index'

  resources :articles do
    resources :comments
  end

  resources :tags

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
