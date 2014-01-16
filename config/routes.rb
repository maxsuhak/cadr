Cadr::Application.routes.draw do
  
  devise_for :admins
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", registrations: "users/registrations" }
  
  root to: "dashboards#index"
  
  resources :users, only: [:index, :show, :edit, :update]
  resources :trees, only: [:index]
  resources :posts, only: [:index]
  resources :dashboards, only: [:index]
  resources :docs, only: [:index, :show]
  
  namespace :admin do
    root to: "dashboards#index"
    resources :users, except: [:destroy, :new, :create] do
      collection do
        get :unsorted
      end
    end
    resources :trees
    resources :dashboards
    resources :posts
    resources :docs
  end
end
