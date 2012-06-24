Hinagiku::Application.routes.draw do
  get "tasks/destroy"

  get "tasks/edit"

  get "tasks/update"

  get "tasks/create"

  root :to => "tasks#index"
  resources :tasks
  get "tasks/show"
  get "tasks/new"
end
