Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/posts'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
end
