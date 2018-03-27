Rails.application.routes.draw do
  # 1 Show All
  get 'tasks', to: 'tasks#index'
  # 2 See specific tast
  get 'task/:id', to:'tasks#show'
  # 3 Create new tasks
  get 'tasks/new', to: 'tasks#new' #Part 1 get the new task info
  post 'tasks', to: 'tasks#create'
  # 4 Update a task
  get 'task/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'
  # 5 Destroy task
  delete 'task:id/', to: 'tasks#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
