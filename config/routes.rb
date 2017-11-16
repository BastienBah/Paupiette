Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :repas do
    resources :participations, only: [:show,:create,:destroy]
  end

  get "/participation" => "home#participation"

  devise_for :users, :controllers => {:registrations => "users/registrations"}

  devise_scope :user do
    get "/dashboard" => "users/registrations#dashboard"
    resources :messages, only: [:show, :create, :destroy]
  end

  root "home#index"
end
