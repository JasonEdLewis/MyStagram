Rails.application.routes.draw do
  resources :posts
  resources :follows
  
  post '/login', to: 'auth#login'
  post '/signup', to: 'users#create'
  
end
