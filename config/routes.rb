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
    root to: "trees#index"
    resources :users do
      collection do
        get :unsorted
      end
    end
    resources :trees
  end
end
