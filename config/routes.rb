Rails.application.routes.draw do
  root to: 'products#index'
  get 'signup', to: 'stores#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :products, only: [:index]
  resources :sessions, only: [:new, :create, :destroy]

  resources :stores do
    resources :products, except: [:index]
  end
end
