Rails.application.routes.draw do
  mount Upmin::Engine => '/upmin'

  devise_for :users

  root "reservations#index"

  resources :console_servers
  resources :reservations
  resources :topologies
  resources :devices
  resources :mrvs
  resources :credentials

  get 'user_home' => 'user_home#index'
end
