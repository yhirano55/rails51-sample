Rails.application.routes.draw do
  root 'builds#index'

  resources :builds, only: [:index, :show]
  resources :users, only: :index
  resources :repos, only: :index
  resources :tasks, only: [:index, :new]
  resources :projects, only: :new

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
