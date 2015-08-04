Rails.application.routes.draw do

  root to: 'animals#index'

  resources :animals

  # delete '/animals/:id', to: 'animals#destroy'

end
