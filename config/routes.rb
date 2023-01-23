Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  root 'welcome#home'
end
