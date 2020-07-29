Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :show]
  resources :games, only: [:index, :show, :create, :update, :destroy]
  resources :passages, only: [:index]

  get 'login', to: 'users#login', as: 'login'
end
