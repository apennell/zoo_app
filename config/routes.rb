Rails.application.routes.draw do

  get 'exhibits/desert'

  get 'exhibits/forest'

  get 'exhibits/town'

  root to: 'animals#index'

  resources :animals, :exhibits

  # delete '/animals/:id', to: 'animals#destroy'

end
