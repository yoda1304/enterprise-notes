Rails.application.routes.draw do
  resources :notes
  resources :courses
  resources :users

  get 'home', to: 'home#index', as: :home
  get 'home/search', to: 'home#search', as: :search
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
