Rails.application.routes.draw do

  resources :tasks
  devise_for :users
  
  get '/', to: 'tasks#index'
  get '/report/new', to: 'tasks#generate_report'

  get '/report', to: 'tasks#report'

  root to: 'tasks#index'
end
