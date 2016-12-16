Rails.application.routes.draw do
  get 'users/new'

  root to: 'articles#index'

  resources :articles do
    resources :comments
  end

  resources :tags
end
