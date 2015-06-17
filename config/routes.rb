Rails.application.routes.draw do
  root to: 'static_pages#index'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:index, :show, :update]
    resources :groups
    resources :subscriptions, only: [:create, :destroy] #:index
    resources :events
    resources :attendings, only: [:create, :destroy] #:index
  end

  resource :session, only: [:destroy]
  resources :users, only: [:new, :create], path: "enter"
end
