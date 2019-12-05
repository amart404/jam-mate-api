Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'

  resources :users, only: [:create, :show, :delete]
  resources :locations, only: [:index, :show, :create, :delete, :update]
  resources :information, only: [:index, :show, :create, :delete, :update]
  resources :contacts, only: [:index, :show, :create, :delete, :update]
end
