Rails.application.routes.draw do
  
  # get 'matches/show'

  # get 'matches/edit'

  # get 'swipes/index'

  root 'pages#index'

  get '/connections', to: "matches#connection"

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

  post 'twilio/voice' => 'twilio#voice'
  post 'notifications/notify' => 'notifications#notify'

  resources :twilio

 


end

#       Prefix Verb     URI Pattern                        Controller#Action
#         root GET      /                                  pages#index
#              GET|POST /auth/:provider/callback(.:format) sessions#create
# auth_failure GET|POST /auth/failure(.:format)            redirect(301, /)
#      signout GET|POST /signout(.:format)                 sessions#destroy
#      profile GET      /profile(.:format)                 users#show
#   users_edit GET      /users/edit(.:format)              users#edit
#              POST     /users/edit(.:format)              users#update
#         user PUT      /users/edit(.:format)              users#update
#        users GET      /users(.:format)                   users#index
#              POST     /users(.:format)                   users#create
#     new_user GET      /users/new(.:format)               users#new
#    edit_user GET      /users/:id/edit(.:format)          users#edit
#              GET      /users/:id(.:format)               users#show
#              PATCH    /users/:id(.:format)               users#update
#              PUT      /users/:id(.:format)               users#update
#              DELETE   /users/:id(.:format)               users#destroy
#      matches GET      /matches(.:format)                 matches#index
#              POST     /matches(.:format)                 matches#create
#    new_match GET      /matches/new(.:format)             matches#new
#   edit_match GET      /matches/:id/edit(.:format)        matches#edit
#        match GET      /matches/:id(.:format)             matches#show
#              PATCH    /matches/:id(.:format)             matches#update
#              PUT      /matches/:id(.:format)             matches#update
#              DELETE   /matches/:id(.:format)             matches#destroy
#       signup GET      /signup(.:format)                  sessions#new
#   my_matches GET      /my-matches(.:format)              matches#edit
#      find_me GET      /find-me(.:format)                 users#edit


