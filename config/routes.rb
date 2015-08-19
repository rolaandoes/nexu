Rails.application.routes.draw do
  
  # get 'matches/show'

  # get 'matches/edit'

  # get 'swipes/index'

  root 'pages#index'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  
  # get "/signup", to: "users#new"
  
  get "/profile", to: "users#show"
  
  get '/users/edit', to: "users#edit"
  
  post '/users/edit', to: 'users#update'
  
  put '/users/edit', to: 'users#update', as: :user



  resources :users
  resources :matches

  # get '/profile', to: 'users#show' , as: :profile
  get '/signup', to: 'sessions#new', as: :signup #Actual Splash Page
  get '/my-matches', to: 'matches#edit'
  get '/find-me', to: 'users#edit'


 


end


#        Prefix Verb     URI Pattern                        Controller#Action
#          root GET      /                                  pages#index
#               GET|POST /auth/:provider/callback(.:format) sessions#create
#  auth_failure GET|POST /auth/failure(.:format)            redirect(301, /)
#       signout GET|POST /signout(.:format)                 sessions#destroy
#         users GET      /users(.:format)                   users#index
#               POST     /users(.:format)                   users#create
#      new_user GET      /users/new(.:format)               users#new
#     edit_user GET      /users/:id/edit(.:format)          users#edit
#          user GET      /users/:id(.:format)               users#show
#               PATCH    /users/:id(.:format)               users#update
#               PUT      /users/:id(.:format)               users#update
#               DELETE   /users/:id(.:format)               users#destroy
#       profile GET      /profile(.:format)                 users#show
#        signup GET      /signup(.:format)                  sessions#new
#    my_matches GET      /my-matches(.:format)              matches#edit
#       find_me PATCH    /find-me(.:format)                 locations#show
#     locations GET      /locations(.:format)               locations#index
#               POST     /locations(.:format)               locations#create
#  new_location GET      /locations/new(.:format)           locations#new
# edit_location GET      /locations/:id/edit(.:format)      locations#edit
#      location GET      /locations/:id(.:format)           locations#show
#               PATCH    /locations/:id(.:format)           locations#update
#               PUT      /locations/:id(.:format)           locations#update
#               DELETE   /locations/:id(.:format)           locations#destroy




