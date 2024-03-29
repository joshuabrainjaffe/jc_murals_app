Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: "registrations" }
  resources :murals

  root 'murals#index'

#                     Prefix Verb   URI Pattern                    Controller#Action
#           new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#                   user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#               user_password POST   /users/password(.:format)      devise/passwords#create
#       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#        edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                                         PATCH  /users/password(.:format)      devise/passwords#update
#                                         PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        registrations#cancel
#             user_registration POST   /users(.:format)               registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       registrations#new
#     edit_user_registration GET    /users/edit(.:format)          registrations#edit
#                                        PATCH  /users(.:format)               registrations#update
#                                        PUT    /users(.:format)               registrations#update
#                                        DELETE /users(.:format)               registrations#destroy
#                            murals GET    /murals(.:format)              murals#index
#                                        POST   /murals(.:format)              murals#create
#                     new_mural GET    /murals/new(.:format)          murals#new
#                      edit_mural GET    /murals/:id/edit(.:format)     murals#edit
#                              mural GET    /murals/:id(.:format)          murals#show
#                                        PATCH  /murals/:id(.:format)          murals#update
#                                        PUT    /murals/:id(.:format)          murals#update
#                                        DELETE /murals/:id(.:format)          murals#destroy

end
