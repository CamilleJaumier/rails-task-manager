Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Read all
  get '/tasks', to: 'tasks#index'
  # Create - New
  get '/tasks/new', to: 'tasks#new', as: :task_new
  # Create - Create
  post '/tasks', to: 'tasks#create'
  # Edit
  get '/tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  # Update
  patch '/tasks/:id', to: 'tasks#update'
  # Read one - The `show` route needs to be *after* `new` route.
  get '/tasks/:id', to: 'tasks#show', as: :task
  # Destroy
  delete '/tasks/:id', to: 'tasks#destroy'
end
