Rails.application.routes.draw do
  get    'secret', to: 'secret#index'
  get    'signup', to: 'users#new',       as: 'signup'
  get    'login',  to: 'sessions#new',    as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users,    only: [:create]
  resources :sessions, only: [:create]
  root 'secret#index'
end
