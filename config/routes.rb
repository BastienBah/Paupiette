Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :repas do
    resources :participations, only: [:show,:create,:destroy,:validate]
  end

  get "/participation" => "home#participation"

  get "/confiance" => "home#confiance"
  get "/cgu" => "home#cgu"
  get "/contact" => "home#contact"



  match 'validate', to: 'participations#validate', via: [:patch]

  resource :messages

  devise_for :users, :controllers => {:registrations => "users/registrations"}

  devise_scope :user do
    get "/dashboard" => "users/registrations#dashboard"
    resources :messages, only: [:show, :create, :destroy]
  end

  root "home#index"
end
