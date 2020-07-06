Rails.application.routes.draw do


  resources :tasks
  devise_for :users
  get 'welcome/index'
  # root to: "welcome/index"
end
