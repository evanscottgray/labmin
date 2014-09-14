Rails.application.routes.draw do

  mount Upmin::Engine => '/upmin'

  root "home#index"
  devise_for :users

  get 'user_home' => 'user_home#index'
  get 'user_home/topologies' => 'user_home#topologies'

  resources :reservations
  resources :topologies
  resources :devices
end
