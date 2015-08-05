Rails.application.routes.draw do

  get 'sessions/new'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'exhibits/desert'

  get 'exhibits/forest'

  get 'exhibits/town'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'

  root to: 'animals#index'

  resources :animals, :exhibits, :users

  # delete '/animals/:id', to: 'animals#destroy'

end
