Rails.application.routes.draw do
  root to: 'exhibits#index'
  
  get 'sessions/new'

  get 'users/new'
  get 'users/create'
  get 'users/show'
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get 'exhibits/desert'
  get 'exhibits/forest'
  get 'exhibits/town'
  get 'exhibits/asia'
  get 'exhibits/birdland'
  get 'exhibits/down_under'
  get 'exhibits/jungle'
  get 'exhibits/oceanlandia'
  get 'exhibits/reptile_city'
  get 'exhibits/savanna'
  get 'exhibits/south_america'

  resources :animals, :exhibits, :users

  # delete '/animals/:id', to: 'animals#destroy'

end
