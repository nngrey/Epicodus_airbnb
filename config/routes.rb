Airbnb::Application.routes.draw do

  devise_for :users
  resources :properties
  resources :reservations
  resources :reviews

  root 'properties#index'

end
