Rails.application.routes.draw do
  get 'stores/index'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'stores#index', as: 'store'
end
