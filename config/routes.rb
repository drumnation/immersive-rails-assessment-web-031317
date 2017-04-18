Rails.application.routes.draw do
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:index, :show, :new, :create]
  resources :sessions, only: [:create]
  get '/login', to: "sessions#new"
  get '/logout', to: "sessions#delete"
end
