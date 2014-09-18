Rails.application.routes.draw do

  resources :console_servers

  resources :mrvs

  resources :credentials

  resources :device_console_interfaces

  mount Upmin::Engine => '/upmin'

  root "home#index"
  devise_for :users

  get 'user_home' => 'user_home#index'
  get 'user_home/topologies' => 'user_home#topologies'

  resources :reservations
  resources :topologies
  resources :devices
end
