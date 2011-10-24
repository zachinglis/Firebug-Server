FirebugServer::Application.routes.draw do
  get "pages/index"

  resources :bugs

  root :to => "bugs#index"
end
