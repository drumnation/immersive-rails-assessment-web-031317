Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :new, :create, :show]
  resources :episodes, only: [:index, :show]
  # resources :sessions, only: [:create]
  resources :appearances, only: [:new, :create, :update, :destroy]
  get '/login', to: 'sessions#index', as: :login
  get '/signup', to: 'sessions#new', as: :signup
  post '/login', to: 'sessions#create', as: :create_user
  get '/sessions/:id', to: 'sessions#show', as: :show_user
end
