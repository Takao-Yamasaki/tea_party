Rails.application.routes.draw do
  root to: 'experiences#index' 
  devise_for :users
  resources :users do
    resources :bookings
  end
  resources :experiences do
    resource :likes, only: [:create, :destroy]
    resources :bookings
  end
  resources :hosts
  
end
