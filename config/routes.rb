Rails.application.routes.draw do
  resources :carts
  resources :line_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'sessions#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'session#destroy'

  get 'store', to: 'stores#index'

  resources :products
  get 'signup', to: 'users#new'
  resource :users, only: [:index, :new, :create]
end
