Hinagiku::Application.routes.draw do
  get "tasks/create"

  root :to => "tasks#index"
  resources :tasks
  get "tasks/show"
  get "tasks/new"
end
