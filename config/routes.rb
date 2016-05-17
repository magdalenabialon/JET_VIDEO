Rails.application.routes.draw do

  devise_for :users
  devise_for :installs
  resources :rooms

  root :to => "rooms#index"
end
