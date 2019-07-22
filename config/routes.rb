Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    get 'dashboard', to: 'dashboard#index', as: :dashboard

    resources :cars
    resources :bookings
    resources :manufacturers
    resources :car_groups
  end
end
