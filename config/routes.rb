Rails.application.routes.draw do

  get 'pages/index'
  get 'login', to: "sessions#new"
  get 'signup', to: "users#new"
  get 'logout', to: "sessions#destroy"

  root to: "pages#home"

  resources :users do
    resources :menus, only: [:index, :create, :show, :destroy, :update]
  end


end
