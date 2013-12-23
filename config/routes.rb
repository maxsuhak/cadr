Cadr::Application.routes.draw do
  devise_for :users
  resources :languages
  resources :trees
  root to: "trees#index"
end
