Rails.application.routes.draw do
  
  get 'reservations/create'
  root 'top#index'#welcome画面をtop#indexへ変更する
  
  get 'users/account', to: 'users#account'
  get 'users/profile', to: 'users#profile'
  get 'rooms/posts', to: 'rooms#posts'
  get 'rooms/search', to: 'rooms#search'
  post 'reservations/confirm', to: 'reservations#confirm'
  post 'reservations/back'
  post 'reservations/complete', to: 'reservations#complete'
  
  resources :users, only: [:update]
  resources :rooms
  resources :reservations, only: [:index, :confirm, :complete]
  
  devise_for :users,
    controllers: {
    :confirmations => 'users/confirmations',
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
    }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
