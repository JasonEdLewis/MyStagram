Rails.application.routes.draw do
  resources :follows
  
  post '/login', to: 'auth#login'
  post '/signup', to: 'users#create'

  post '/posts',  to: 'posts#create'
  get '/posts', to: 'posts#index'
  get '/posts/:id', to: 'posts#show'

  post '/commments', to: 'comments#create'
  get   '/comments', to: 'comments#index'
  get  '/comments/:id', to: 'comments#show'  
end
