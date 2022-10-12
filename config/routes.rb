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
    resources :bookings, only: [:index]
    resources :likes, only: [:index]
  end

  resources :experiences do
    resource :likes, only: [:create, :destroy]
    resources :bookings, only: [:index, :new, :create, :destroy]
    resources :reviews, only: [:new, :create]
  end
end
