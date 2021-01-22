Rails.application.routes.draw do
  get 'dashboards/show'
  devise_for :users do
  end
  root to: 'pages#home'
  resources :restaurantes, only: [:index] do
    resources :dashboards, only: [:show] do
      resources :meals, except: [:index]
      resources :drinks, except: [:index]
    end
    resources :menus, only: [:show, :index] do
      resources :meals, only: [:index]
      resources :drinks, only: [:index]
    end
    resources :set_menus, only: [:show]
  end
end
