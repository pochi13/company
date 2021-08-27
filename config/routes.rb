Rails.application.routes.draw do
  get 'messages/new'
  devise_for :users,
  controllers: {
    registrations: 'registrations',
    sessions: :sessions
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tweets#index'
  resources :tweets,only: [:new,:show] 
  resources :companys,only: [:index,:new,:show,:create,:edit,:update,:destroy] do
    resources :messages, only: [:create]
    resources :consultations, only: [:index,:new,:show,:create,:edit,:update,:destroy]
  end
  resources :users, only: [:show, :index]
  resources :reactions, only: [:create]
  resources :matching, only: [:index]

  resources :chat_rooms, only: [:create, :show]
end
