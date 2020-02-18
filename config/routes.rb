Rails.application.routes.draw do
  # see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  get "tasks/new", to: 'tasks#new', as: :new
  get "tasks/:id", to: 'tasks#show', as: :task
  post "tasks", to: 'tasks#create'

  get "tasks/edit/:id", to: 'tasks#edit', as: :edit
  patch "tasks/:id", to: 'tasks#update'
  delete "tasks/:id", to: 'tasks#destroy'
end
