Rails.application.routes.draw do
  # 1 Show All
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new' #Part 1 get the new task info
  # 2 See specific tast
  get 'tasks/:id', to:'tasks#show', as: :task
  # 3 Create new tasks
  post 'tasks', to: 'tasks#create'
  # 4 Update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
  # 5 Destroy task
  delete 'tasks/:id', to: 'tasks#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
