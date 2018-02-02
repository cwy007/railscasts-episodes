# == Route Map
#
#                   Prefix Verb   URI Pattern                    Controller#Action
#                 articles GET    /articles(.:format)            articles#index
#                          POST   /articles(.:format)            articles#create
#              new_article GET    /articles/new(.:format)        articles#new
#             edit_article GET    /articles/:id/edit(.:format)   articles#edit
#                  article GET    /articles/:id(.:format)        articles#show
#                          PATCH  /articles/:id(.:format)        articles#update
#                          PUT    /articles/:id(.:format)        articles#update
#                          DELETE /articles/:id(.:format)        articles#destroy
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#            user_password PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
#                          POST   /users/password(.:format)      devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#        user_registration PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                          POST   /users(.:format)               devise/registrations#create
#                     root GET    /                              welcome#index
#                  welcome GET    /welcome(.:format)             welcome#index
#

Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end

  resources :photos do
    resources :comments
  end

  resources :events do
    resources :comments
  end
  
  devise_for :users
  root 'welcome#index'
  get 'welcome', to: 'welcome#index', as: :welcome
end
