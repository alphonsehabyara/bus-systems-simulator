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

    #Routes for routes
  root to: 'bus_routes#index'
  get "/bus_routes", to: 'bus_routes#index'
  get "bus_routes/new", to: 'bus_routes#new'
  get "/bus_routes/:id", to: 'bus_routes#show'
  post "bus_routes", to: 'bus_routes#create'
  get "/bus_routes/:id/edit", to: 'bus_routes#edit'
  patch "/bus_routes/:id", to: 'bus_routes#update'
  delete "/bus_routes/:id", to: 'bus_routes#destroy'
end
