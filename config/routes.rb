Rails.application.routes.draw do
  mount Upmin::Engine => '/upmin'

  devise_for :users

  root "reservations#index"

  resources :console_servers

  resources :mrvs

  resources :credentials

  resources :device_console_interfaces

  resources :reservations

  resources :topologies

  resources :devices
end
