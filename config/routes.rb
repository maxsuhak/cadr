Cadr::Application.routes.draw do
  
  get "dashboards/index"

  devise_for :admins
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", registrations: "users/registrations" }
  
  root to: "dashboards#index"
  
  resources :users, only: [:index, :show, :edit, :update]
  resources :languages, only: [:index]
  resources :trees, only: [:index]
  resources :dashboards
  
  namespace :admin do
    root to: "dashboards#index"
    resources :users do
      collection do
        get :unsorted
      end
    end
    resources :trees
    resources :dashboards
    resources :posts
  end
end
