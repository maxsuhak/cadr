Cadr::Application.routes.draw do
  
  devise_for :admins
  devise_for :users
  
  resources :users, only: [:index, :show, :edit, :update]
  resources :languages, only: [:index]
  resources :trees, only: [:index]
  
  root to: "trees#index"
  
  namespace :admin do
    resources :users
    resources :trees
  end
end
