Hinagiku::Application.routes.draw do
  get "tasks/show"

  root :to => "tasks#index"
  resources :tasks
end
