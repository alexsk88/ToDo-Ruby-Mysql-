Rails.application.routes.draw do

  resources :tasks
  devise_for :users
  
  get '/', to: 'tasks#index'
  root to: 'tasks#index'
end
