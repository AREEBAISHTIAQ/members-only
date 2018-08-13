Rails.application.routes.draw do
  root 'static_pages#home'
  get '/posts',    to: 'static_pages#posts'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
end
