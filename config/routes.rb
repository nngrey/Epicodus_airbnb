Airbnb::Application.routes.draw do

  devise_for :users
  resources :properties
  resources :reservations



  root 'properties#index'

end
