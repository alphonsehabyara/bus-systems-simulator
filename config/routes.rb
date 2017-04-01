Rails.application.routes.draw do
  
  post '/rate' => 'rater#create', :as => 'rate'
  #Routes for companies
  get "/companies", to: 'companies#index'
  get "companies/new", to: 'companies#new'
  get "/companies/:id", to: 'companies#show'
  post "companies", to: 'companies#create'
  get "/companies/:id/edit", to: 'companies#edit'
  patch "/companies/:id", to: 'companies#update'
  delete "/companies/:id", to: 'companies#destroy'

    #Routes for bus routes
  get "/bus_routes", to: 'bus_routes#index'
  get "bus_routes/new", to: 'bus_routes#new'
  get "/bus_routes/:id", to: 'bus_routes#show'
  post "bus_routes", to: 'bus_routes#create'
  get "/bus_routes/:id/edit", to: 'bus_routes#edit'
  patch "/bus_routes/:id", to: 'bus_routes#update'
  delete "/bus_routes/:id", to: 'bus_routes#destroy'

  #Routes for bus stops
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

  #fRoute for password reset
  get "/password_resets/new", to: 'password_resets#new'
  post  "/password_resets", to: 'password_resets#create'
  get "/password_resets/:id/edit edit", to: 'password_resets#edit'
  patch "/password_resets/:id", to: 'password_resets#update'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

  #Route for static pages
  root to: 'static_pages#index'

  #Route for comments
  get "/comments", to: 'comments#index'
  get "comments/new", to: 'comments#new'
  get "/comments/:id", to: 'comments#show'
  post "comments", to: 'comments#create'
  get "/comments/:id/edit", to: 'comments#edit'
  patch "/comments/:id", to: 'comments#update'
  delete "/comments/:id", to: 'comments#destroy'

end
