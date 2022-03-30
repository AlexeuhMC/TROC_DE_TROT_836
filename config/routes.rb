Rails.application.routes.draw do
  devise_for :users
  root to: 'e_scooters#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :e_scooters do
    resources :bookings, except: [:edit, :update]
  end
end
