Rails.application.routes.draw do
  devise_for :users, # この行にカンマを追加
    controllers: { registrations: 'registrations' } # この行を追加

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tweets#index'
   resources :users, only: [:show]
end
