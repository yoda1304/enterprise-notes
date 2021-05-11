Rails.application.routes.draw do
  resources :notes
  resources :courses
  resources :users
  resources :sessions
  resources :badges

  get 'signup' => 'users#new', :as => :signup
  get 'login' => 'sessions#new', :as => :login
  get 'logout' => 'sessions#destroy', :as => :logout

  get 'home', to: 'home#index', as: :home
  get 'home/search', to: 'home#search', as: :search

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
