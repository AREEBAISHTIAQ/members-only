Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/posts'
  get 'sessions/new'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
end
