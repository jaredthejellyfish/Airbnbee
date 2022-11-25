Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: "insects#index"

  resources :insects do
    resources :bookings
  end
end
