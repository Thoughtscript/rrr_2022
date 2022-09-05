Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/dinosaurs', to: 'dinosaurs#list'
  get '/dinosaurs/:id', to: 'dinosaurs#getOne'
  post '/dinosaurs', to: 'dinosaurs#create'

  resources :dinosaurs
end
