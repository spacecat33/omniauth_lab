Rails.application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  root 'welcome#home'
end
