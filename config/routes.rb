Rails.application.routes.draw do

  root "home#index"
  devise_for :users

  get 'user_home' => 'user_home#index'
end
