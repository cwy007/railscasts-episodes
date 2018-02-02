# == Route Map
#
#                   Prefix Verb   URI Pattern                                       Controller#Action
#                   events GET    /events(.:format)                                 events#index
#                          POST   /events(.:format)                                 events#create
#                new_event GET    /events/new(.:format)                             events#new
#               edit_event GET    /events/:id/edit(.:format)                        events#edit
#                    event GET    /events/:id(.:format)                             events#show
#                          PATCH  /events/:id(.:format)                             events#update
#                          PUT    /events/:id(.:format)                             events#update
#                          DELETE /events/:id(.:format)                             events#destroy
#                   photos GET    /photos(.:format)                                 photos#index
#                          POST   /photos(.:format)                                 photos#create
#                new_photo GET    /photos/new(.:format)                             photos#new
#               edit_photo GET    /photos/:id/edit(.:format)                        photos#edit
#                    photo GET    /photos/:id(.:format)                             photos#show
#                          PATCH  /photos/:id(.:format)                             photos#update
#                          PUT    /photos/:id(.:format)                             photos#update
#                          DELETE /photos/:id(.:format)                             photos#destroy
#         article_comments GET    /articles/:article_id/comments(.:format)          comments#index
#                          POST   /articles/:article_id/comments(.:format)          comments#create
#      new_article_comment GET    /articles/:article_id/comments/new(.:format)      comments#new
#     edit_article_comment GET    /articles/:article_id/comments/:id/edit(.:format) comments#edit
#          article_comment GET    /articles/:article_id/comments/:id(.:format)      comments#show
#                          PATCH  /articles/:article_id/comments/:id(.:format)      comments#update
#                          PUT    /articles/:article_id/comments/:id(.:format)      comments#update
#                          DELETE /articles/:article_id/comments/:id(.:format)      comments#destroy
#                 articles GET    /articles(.:format)                               articles#index
#                          POST   /articles(.:format)                               articles#create
#              new_article GET    /articles/new(.:format)                           articles#new
#             edit_article GET    /articles/:id/edit(.:format)                      articles#edit
#                  article GET    /articles/:id(.:format)                           articles#show
#                          PATCH  /articles/:id(.:format)                           articles#update
#                          PUT    /articles/:id(.:format)                           articles#update
#                          DELETE /articles/:id(.:format)                           articles#destroy
#           photo_comments GET    /photos/:photo_id/comments(.:format)              comments#index
#                          POST   /photos/:photo_id/comments(.:format)              comments#create
#        new_photo_comment GET    /photos/:photo_id/comments/new(.:format)          comments#new
#       edit_photo_comment GET    /photos/:photo_id/comments/:id/edit(.:format)     comments#edit
#            photo_comment GET    /photos/:photo_id/comments/:id(.:format)          comments#show
#                          PATCH  /photos/:photo_id/comments/:id(.:format)          comments#update
#                          PUT    /photos/:photo_id/comments/:id(.:format)          comments#update
#                          DELETE /photos/:photo_id/comments/:id(.:format)          comments#destroy
#                          GET    /photos(.:format)                                 photos#index
#                          POST   /photos(.:format)                                 photos#create
#                          GET    /photos/new(.:format)                             photos#new
#                          GET    /photos/:id/edit(.:format)                        photos#edit
#                          GET    /photos/:id(.:format)                             photos#show
#                          PATCH  /photos/:id(.:format)                             photos#update
#                          PUT    /photos/:id(.:format)                             photos#update
#                          DELETE /photos/:id(.:format)                             photos#destroy
#           event_comments GET    /events/:event_id/comments(.:format)              comments#index
#                          POST   /events/:event_id/comments(.:format)              comments#create
#        new_event_comment GET    /events/:event_id/comments/new(.:format)          comments#new
#       edit_event_comment GET    /events/:event_id/comments/:id/edit(.:format)     comments#edit
#            event_comment GET    /events/:event_id/comments/:id(.:format)          comments#show
#                          PATCH  /events/:event_id/comments/:id(.:format)          comments#update
#                          PUT    /events/:event_id/comments/:id(.:format)          comments#update
#                          DELETE /events/:event_id/comments/:id(.:format)          comments#destroy
#                          GET    /events(.:format)                                 events#index
#                          POST   /events(.:format)                                 events#create
#                          GET    /events/new(.:format)                             events#new
#                          GET    /events/:id/edit(.:format)                        events#edit
#                          GET    /events/:id(.:format)                             events#show
#                          PATCH  /events/:id(.:format)                             events#update
#                          PUT    /events/:id(.:format)                             events#update
#                          DELETE /events/:id(.:format)                             events#destroy
#         new_user_session GET    /users/sign_in(.:format)                          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                         devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)                     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                    devise/passwords#edit
#            user_password PATCH  /users/password(.:format)                         devise/passwords#update
#                          PUT    /users/password(.:format)                         devise/passwords#update
#                          POST   /users/password(.:format)                         devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)                           devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)                          devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                             devise/registrations#edit
#        user_registration PATCH  /users(.:format)                                  devise/registrations#update
#                          PUT    /users(.:format)                                  devise/registrations#update
#                          DELETE /users(.:format)                                  devise/registrations#destroy
#                          POST   /users(.:format)                                  devise/registrations#create
#                     root GET    /                                                 welcome#index
#                  welcome GET    /welcome(.:format)                                welcome#index
# 

Rails.application.routes.draw do
  resources :events
  resources :photos
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
