Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/jobs', to: 'jobs#create'
  get '/jobs/:id', to: 'jobs#show'
  get '/jobs', to: 'jobs#index'

end
