Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "books#index"

  resources :books do
    resources :notes, only: [:create, :destroy]
  end
  resources :sessions, only: [:new, :create, :destroy] 

  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"
end
