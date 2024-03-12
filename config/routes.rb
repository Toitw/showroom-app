Rails.application.routes.draw do
  get 'home/index'
  resources :looks
  devise_for :users
  root "looks#index"
end
