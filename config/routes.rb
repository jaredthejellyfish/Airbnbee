Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :insects do
    resources :bookings
  end

  resources :users do
    resources :bookings, only: [:show]
  end
end
