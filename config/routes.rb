Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :repas do
    resources :participations, only: [:show,:create,:destroy]
  end

  get "/participation" => "home#participation"

  resource :messages

  devise_for :users, :controllers => {:registrations => "users/registrations"}

  default_url_options :host => "www.paupiette.co"

  devise_scope :user do
    get "/dashboard" => "users/registrations#dashboard"
    resources :messages, only: [:show, :create, :destroy]
  end

  root "home#index"
end
