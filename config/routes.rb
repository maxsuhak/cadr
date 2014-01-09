Cadr::Application.routes.draw do
  
  get "dashboards/index"

  devise_for :admins
  devise_for :users
  
  root to: "dashboards#index"
  
  resources :users, only: [:index, :show, :edit, :update]
  resources :languages, only: [:index]
  resources :trees, only: [:index]
  resources :dashboards
  
  namespace :admin do
    root to: "dashboards#index"
    resources :dashboards
    resources :users
    resources :trees
  end
end
