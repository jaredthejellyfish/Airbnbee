Rails.application.routes.draw do
  devise_for :users
  root to: "insects#index"

  resources :insects do
    resources :bookings, only: [:new, :create]
  end

  resources :users do
    resources :bookings, only: [:show, :destroy]
  end
  resources :bookings, only: [:edit, :update]

  get "/api/insects", to: "insects#api_index"
end
