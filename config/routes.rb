Rails.application.routes.draw do
  root to: 'experiences#index' 
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # ゲストログイン機能
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  resources :users do
    resources :bookings
    resources :likes
  end
  resources :experiences do
    resource :likes
    resources :bookings
    resources :reviews, only: [:new, :create]
  end
end
