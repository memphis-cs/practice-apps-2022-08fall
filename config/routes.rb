Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: redirect('/tracks')

  get 'tracks', to: 'tracks#index', as: 'tracks'
  get 'tracks/:id', to: 'tracks#show', as: 'track'
end
