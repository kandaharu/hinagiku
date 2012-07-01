Hinagiku::Application.routes.draw do

  root :to => "tasks#index"

  post "tasks/create"
  get "tasks/new"
  get "tasks/show"
  get "tasks/edit"
  get "tasks/update"
  get "tasks/destroy"

  resources :tasks do
    put :finish, :restart, :on => :member
    get :done, :on => :collection
  end
end
