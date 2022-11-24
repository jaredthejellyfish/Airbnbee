Rails.application.routes.draw do
  devise_for :users
  root to: "insects#index"

  resources :insects do
    resources :bookings
  end
end
