Rails.application.routes.draw do
  
  #Routes for companies
  root to: 'companies#index'
  get "/companies", to: 'companies#index'
  get "companies/new", to: 'companies#new'
  get "/companies/:id", to: 'companies#show'
  post "companies", to: 'companies#create'
  get "/companies/:id/edit", to: 'companies#edit'
  patch "/companies/:id", to: 'companies#update'
  delete "/companies/:id", to: 'companies#destroy'

    #Routes for bus routes
  root to: 'bus_routes#index'
  get "/bus_routes", to: 'bus_routes#index'
  get "bus_routes/new", to: 'bus_routes#new'
  get "/bus_routes/:id", to: 'bus_routes#show'
  post "bus_routes", to: 'bus_routes#create'
  get "/bus_routes/:id/edit", to: 'bus_routes#edit'
  patch "/bus_routes/:id", to: 'bus_routes#update'
  delete "/bus_routes/:id", to: 'bus_routes#destroy'

  #Routes for bus stops
  root to: 'bus_stops#index'
  get "/bus_stops", to: 'bus_stops#index'
  get "bus_stops/new", to: 'bus_stops#new'
  post "bus_stops", to: 'bus_stops#create'
  get "/bus_stops/:id", to: 'bus_stops#show'
  get "/bus_stops/:id/edit", to: 'bus_stops#edit'
  patch "/bus_stops/:id", to: 'bus_stops#update'
  delete "/bus_stops/:id", to: 'bus_stops#destroy'

  #Route for search
  post "/search", to: 'searches#search_results'

  #Route for users
  get "/signup", to: "users#new"
  post "/users", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

end
