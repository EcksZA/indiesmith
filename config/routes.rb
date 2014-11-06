Rails.application.routes.draw do
  root to: 'products#index'
  get 'signup', to: 'stores#new', as: 'signup'

  resources :products, only: [:index]
  resources :stores do
    resources :products, except: [:index]
  end
end
