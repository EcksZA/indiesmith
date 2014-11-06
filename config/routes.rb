Rails.application.routes.draw do
  root to: 'products#index'

  resources :products, only: [:index]
  resources :stores do
    resources :products, except: [:index]
  end
end
