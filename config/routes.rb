Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  #Bikes Controller Routes
  get "/bikes", controller: "bikes", action: "index"
  get "/bikes/:id", controller: "bikes", action: "show"
  post "/bikes", controller: "bikes", action: "create"
  patch "/bikes/:id", controller: "bikes", action: "update"
  delete "/bikes/:id", controller: "bikes", action: "destroy"

  # # Users Controller Routes
  post "/users", controller: "users", action: "create"
  # # Session Routes
  post "/sessions", controller: "sessions", action: "create"

  ## Orders Controller
  post "/orders", controller: "orders", action: "create"
  get "/orders", controller: "orders", action: "index"
  get "/orders/:id", controller: "orders", action: "show"
  

end
