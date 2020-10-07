Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/edit'
  get 'index/show'
  get 'index/new'
  get 'index/edit'
  get '/login', to: 'sessions#new'
  post '/login', to:'sessions#create'
 resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
