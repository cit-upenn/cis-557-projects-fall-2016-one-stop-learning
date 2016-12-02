# == Route Map
#
#                   Prefix Verb     URI Pattern                            Controller#Action
#         new_user_session GET      /users/sign_in(.:format)               devise/sessions#new
#             user_session POST     /users/sign_in(.:format)               devise/sessions#create
#     destroy_user_session DELETE   /users/sign_out(.:format)              devise/sessions#destroy
#  user_omniauth_authorize GET|POST /users/auth/:provider(.:format)        users/omniauth_callbacks#passthru {:provider=>/facebook/}
#   user_omniauth_callback GET|POST /users/auth/:action/callback(.:format) users/omniauth_callbacks#(?-mix:facebook)
#            user_password POST     /users/password(.:format)              devise/passwords#create
#        new_user_password GET      /users/password/new(.:format)          devise/passwords#new
#       edit_user_password GET      /users/password/edit(.:format)         devise/passwords#edit
#                          PATCH    /users/password(.:format)              devise/passwords#update
#                          PUT      /users/password(.:format)              devise/passwords#update
# cancel_user_registration GET      /users/cancel(.:format)                devise/registrations#cancel
#        user_registration POST     /users(.:format)                       devise/registrations#create
#    new_user_registration GET      /users/sign_up(.:format)               devise/registrations#new
#   edit_user_registration GET      /users/edit(.:format)                  devise/registrations#edit
#                          PATCH    /users(.:format)                       devise/registrations#update
#                          PUT      /users(.:format)                       devise/registrations#update
#                          DELETE   /users(.:format)                       devise/registrations#destroy
#                 langopts GET      /langopts(.:format)                    langopts#index
#                          POST     /langopts(.:format)                    langopts#create
#              new_langopt GET      /langopts/new(.:format)                langopts#new
#             edit_langopt GET      /langopts/:id/edit(.:format)           langopts#edit
#                  langopt GET      /langopts/:id(.:format)                langopts#show
#                          PATCH    /langopts/:id(.:format)                langopts#update
#                          PUT      /langopts/:id(.:format)                langopts#update
#                          DELETE   /langopts/:id(.:format)                langopts#destroy
#                 comments GET      /comments(.:format)                    comments#index
#                          POST     /comments(.:format)                    comments#create
#              new_comment GET      /comments/new(/:parent_id)(.:format)   comments#new
#                     root GET      /                                      languages#index
#                languages GET      /languages(.:format)                   languages#index
#            languages_cpp GET      /languages/cpp(.:format)               cpp#index
#           languages_java GET      /languages/java(.:format)              java#index
#           languages_ruby GET      /languages/ruby(.:format)              ruby#index
#         languages_python GET      /languages/python(.:format)            python#index
#       languages_favorite GET      /languages/favorite(.:format)          favorites#index
# users_omniauth_callbacks GET      /users/omniauth_callbacks(.:format)    user#facebook
#         cppquizzes_check POST     /cppquizzes/check(.:format)            cppquizzes#check
#      pythonquizzes_check POST     /pythonquizzes/check(.:format)         pythonquizzes#check
#        javaquizzes_check POST     /javaquizzes/check(.:format)           javaquizzes#check
#        rubyquizzes_check POST     /rubyquizzes/check(.:format)           rubyquizzes#check
#                          POST     /languages(.:format)                   languages#select
#           comments_index GET      /comments/index(.:format)              comments#index
#             comments_new GET      /comments/new(.:format)                comments#new
#          comments_create GET      /comments/create(.:format)             comments#create
#                          POST     /languages/python(.:format)            python#favorite
#                          POST     /languages/ruby(.:format)              ruby#favorite
#                          POST     /languages/java(.:format)              java#favorite
#                          POST     /languages/cpp(.:format)               cpp#favorite
#     answering_cppquizzes GET      /cppquizzes/answering(.:format)        cppquizzes#answering
#         check_cppquizzes GET      /cppquizzes/check(.:format)            cppquizzes#check
#               cppquizzes GET      /cppquizzes(.:format)                  cppquizzes#index
#                          POST     /cppquizzes(.:format)                  cppquizzes#create
#              new_cppquiz GET      /cppquizzes/new(.:format)              cppquizzes#new
#             edit_cppquiz GET      /cppquizzes/:id/edit(.:format)         cppquizzes#edit
#                  cppquiz GET      /cppquizzes/:id(.:format)              cppquizzes#show
#                          PATCH    /cppquizzes/:id(.:format)              cppquizzes#update
#                          PUT      /cppquizzes/:id(.:format)              cppquizzes#update
#                          DELETE   /cppquizzes/:id(.:format)              cppquizzes#destroy
#  answering_pythonquizzes GET      /pythonquizzes/answering(.:format)     pythonquizzes#answering
#      check_pythonquizzes GET      /pythonquizzes/check(.:format)         pythonquizzes#check
#            pythonquizzes GET      /pythonquizzes(.:format)               pythonquizzes#index
#                          POST     /pythonquizzes(.:format)               pythonquizzes#create
#           new_pythonquiz GET      /pythonquizzes/new(.:format)           pythonquizzes#new
#          edit_pythonquiz GET      /pythonquizzes/:id/edit(.:format)      pythonquizzes#edit
#               pythonquiz GET      /pythonquizzes/:id(.:format)           pythonquizzes#show
#                          PATCH    /pythonquizzes/:id(.:format)           pythonquizzes#update
#                          PUT      /pythonquizzes/:id(.:format)           pythonquizzes#update
#                          DELETE   /pythonquizzes/:id(.:format)           pythonquizzes#destroy
#    answering_javaquizzes GET      /javaquizzes/answering(.:format)       javaquizzes#answering
#        check_javaquizzes GET      /javaquizzes/check(.:format)           javaquizzes#check
#              javaquizzes GET      /javaquizzes(.:format)                 javaquizzes#index
#                          POST     /javaquizzes(.:format)                 javaquizzes#create
#             new_javaquiz GET      /javaquizzes/new(.:format)             javaquizzes#new
#            edit_javaquiz GET      /javaquizzes/:id/edit(.:format)        javaquizzes#edit
#                 javaquiz GET      /javaquizzes/:id(.:format)             javaquizzes#show
#                          PATCH    /javaquizzes/:id(.:format)             javaquizzes#update
#                          PUT      /javaquizzes/:id(.:format)             javaquizzes#update
#                          DELETE   /javaquizzes/:id(.:format)             javaquizzes#destroy
#    answering_rubyquizzes GET      /rubyquizzes/answering(.:format)       rubyquizzes#answering
#        check_rubyquizzes GET      /rubyquizzes/check(.:format)           rubyquizzes#check
#              rubyquizzes GET      /rubyquizzes(.:format)                 rubyquizzes#index
#                          POST     /rubyquizzes(.:format)                 rubyquizzes#create
#             new_rubyquiz GET      /rubyquizzes/new(.:format)             rubyquizzes#new
#            edit_rubyquiz GET      /rubyquizzes/:id/edit(.:format)        rubyquizzes#edit
#                 rubyquiz GET      /rubyquizzes/:id(.:format)             rubyquizzes#show
#                          PATCH    /rubyquizzes/:id(.:format)             rubyquizzes#update
#                          PUT      /rubyquizzes/:id(.:format)             rubyquizzes#update
#                          DELETE   /rubyquizzes/:id(.:format)             rubyquizzes#destroy
#

#         new_user_session GET      /users/sign_in(.:format)               devise/sessions#new
#             user_session POST     /users/sign_in(.:format)               devise/sessions#create
#     destroy_user_session DELETE   /users/sign_out(.:format)              devise/sessions#destroy
#  user_omniauth_authorize GET|POST /users/auth/:provider(.:format)        users/omniauth_callbacks#passthru {:provider=>/facebook/}
#   user_omniauth_callback GET|POST /users/auth/:action/callback(.:format) users/omniauth_callbacks#(?-mix:facebook)
#            user_password POST     /users/password(.:format)              devise/passwords#create
#        new_user_password GET      /users/password/new(.:format)          devise/passwords#new
#       edit_user_password GET      /users/password/edit(.:format)         devise/passwords#edit
#                          PATCH    /users/password(.:format)              devise/passwords#update
#                          PUT      /users/password(.:format)              devise/passwords#update
# cancel_user_registration GET      /users/cancel(.:format)                devise/registrations#cancel
#        user_registration POST     /users(.:format)                       devise/registrations#create
#    new_user_registration GET      /users/sign_up(.:format)               devise/registrations#new
#   edit_user_registration GET      /users/edit(.:format)                  devise/registrations#edit
#                          PATCH    /users(.:format)                       devise/registrations#update
#                          PUT      /users(.:format)                       devise/registrations#update
#                          DELETE   /users(.:format)                       devise/registrations#destroy
#                 langopts GET      /langopts(.:format)                    langopts#index
#                          POST     /langopts(.:format)                    langopts#create
#              new_langopt GET      /langopts/new(.:format)                langopts#new
#             edit_langopt GET      /langopts/:id/edit(.:format)           langopts#edit
#                  langopt GET      /langopts/:id(.:format)                langopts#show
#                          PATCH    /langopts/:id(.:format)                langopts#update
#                          PUT      /langopts/:id(.:format)                langopts#update
#                          DELETE   /langopts/:id(.:format)                langopts#destroy
#                     root GET      /                                      languages#index
#            languages_cpp GET      /languages/cpp(.:format)               cpp#index
#           languages_java GET      /languages/java(.:format)              java#index
#           languages_ruby GET      /languages/ruby(.:format)              ruby#index
#         languages_python GET      /languages/python(.:format)            python#index
#                languages GET      /languages(.:format)                   languages#index
# users_omniauth_callbacks GET      /users/omniauth_callbacks(.:format)    user#facebook
#                          POST     /languages(.:format)                   languages#select


Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :langopts
  resources :comments, only: [:index, :create]
  get '/comments/new/(:parent_id)', to: 'comments#new', as: :new_comment

  
  
  root 'languages#index' 
  get 'languages' => 'languages#index'


  # match 'page_redirect' => 'languages#page_redirect', :as =>'page_redirect',:via => [:post]
  get 'languages/cpp' => 'cpp#index'
  get 'languages/java' => 'java#index'
  get 'languages/ruby' => 'ruby#index'
  get 'languages/python' => 'python#index'

  # favorite page
  get 'languages/favorite' => 'favorites#index'
  post 'languages/favorite' => 'favorites#add'
  
  get '/users/omniauth_callbacks' => 'user#facebook'
  post 'cppquizzes/check'=>'cppquizzes#check'
  post 'pythonquizzes/check'=>'pythonquizzes#check'
  post 'javaquizzes/check'=>'javaquizzes#check'
  post 'rubyquizzes/check'=>'rubyquizzes#check'
  post 'languages' => 'languages#select'

  # Routes for comments
  get 'comments/index'
  get 'comments/new'
  get 'comments/create'

  post 'languages/python' => 'python#favorite'
  post 'languages/ruby' => 'ruby#favorite'
  post 'languages/java' => 'java#favorite'
  post 'languages/cpp' => 'cpp#favorite'

  resources :cppquizzes do
    collection do
    get :answering
    get :check
    end
  end
  resources :pythonquizzes do
    collection do
    get :answering
    get :check
    end
  end
  resources :javaquizzes do
    collection do
    get :answering
    get :check
    end
  end
  resources :rubyquizzes do
  collection do
    get :answering
    get :check
  end
  end
  
  
  # devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  # devise_scope :user do
  #   delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
