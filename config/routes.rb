Rails.application.routes.draw do
  get '/addTodo', to: 'todos#new'
  post '/addTodo', to: 'todos#create'
  delete '/removeTodo', to: 'todos#destroy'
  resources :todos
end
