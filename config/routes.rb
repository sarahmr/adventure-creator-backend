Rails.application.routes.draw do
  resources :reviews
  resources :scenes
  resources :stories
  resources :users
  post '/login', to: 'users#login'
  get '/autologin', to: 'users#autologin'

  get '/user_stories/:id', to: 'users#user_stories'

  get '/story_scenes/:id', to: 'stories#story_scenes'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
