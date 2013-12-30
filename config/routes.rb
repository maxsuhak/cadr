Cadr::Application.routes.draw do
  
  devise_for :admins
  devise_for :users
  
  root to: "trees#index"
  
  resources :users, only: [:index, :show, :edit, :update]
  resources :languages, only: [:index]
  resources :trees, only: [:index]
  
  namespace :admin do
    root to: "trees#index"
    resources :users
    resources :trees
  end
end
