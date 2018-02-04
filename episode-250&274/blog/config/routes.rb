Rails.application.routes.draw do

  get 'welcome', to: 'welcome#index',    as: 'welcome'
  get '/signup', to: 'users#new',        as: 'signup'
  get '/login',  to: 'sessions#new',     as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  resources :password_resets
  resources :articles

  root 'welcome#index'
end
