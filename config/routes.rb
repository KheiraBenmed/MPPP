Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    resources :restaurants do
      resources :bookings
      resources :reviews
    end
  get    "bookings/:id/accept",      to: "bookings#accept", as: "accept_booking"
  get    "bookings/:id/reject",      to: "bookings#reject", as: "reject_booking"
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
