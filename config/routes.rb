Rails.application.routes.draw do
  root to: 'animals#index'
  
  get 'sessions/new'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  get '/signup', to: 'users#new'

  post '/users', to: 'users#create'

  get 'exhibits/desert'

  get 'exhibits/forest'

  get 'exhibits/town'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'

  resources :animals, :exhibits, :users

  # delete '/animals/:id', to: 'animals#destroy'

end
