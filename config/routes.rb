Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :inputs, only: [:new, :create, :show]
  resources :mistakes, only: [:new, :show, :index]
  resources :input_mistakes, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
