Rails.application.routes.draw do
  resources :follows


  # ========== Test Routes ======== #
  get '/users/:id', to: 'users#show'
  get '/users', to: 'users#index'
  
  # ========== Logging in & SignUp ======== #
  post '/login', to: 'auth#login'
  post '/signup', to: 'users#create'

  # ========== User Model ======== #
  get '/profile', to: 'users#profile'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  
# ========== Posts Model ======== #
resources :posts, only: [ :index, :show,:create,:update, :destroy ]
  # post '/posts',  to: 'posts#create'
  # get '/posts', to: 'posts#index'
  # get '/posts/:id', to: 'posts#show'
  # patch '/posts/:id', to: 'posts#update'

 # ========== Comments Model ======== #
  post '/comments', to: 'comments#create'
  get   '/comments', to: 'comments#index'
  get  '/comments/:id', to: 'comments#show'  
  delete '/comments/:id', to: 'comments#destroy'

  # ========== Follows Model ======== #
  get '/Follows', to: 'follows#index'
  get '/Follows/:id', to: 'follows#show'
  post '/Follows/', to: 'follows#create'
  delete '/Follows', to: 'follow#destroy'

  get '*path', to: "application#fallback_index_html", constraints: ->(request) do
    !request.xhr? && request.format.html?
  end
end
