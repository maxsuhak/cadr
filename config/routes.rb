Cadr::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  unless Rails.application.config.consider_all_requests_local
    match '*not_found', to: 'errors#error_404'
  end

  devise_for :admins
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", registrations: "users/registrations" }

  root to: redirect("/dashboards")

  resources :users, only: [:index, :show, :edit, :update]
  resources :trees, only: [:index]
  resources :posts, only: [:index]
  resources :dashboards, only: [:index]
  resources :docs, only: [:index, :show]
  resources :events
  resource :calendar, only: [:show]

  namespace :admin do
    root to: "dashboards#index"
    resources :users, except: [:new, :create] do
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
