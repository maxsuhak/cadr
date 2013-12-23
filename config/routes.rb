Cadr::Application.routes.draw do
  devise_for :users
  resources :languages
  resources :trees, only: [:index]
  root to: "trees#index"
end
