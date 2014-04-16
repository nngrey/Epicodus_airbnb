Airbnb::Application.routes.draw do

  devise_for :users
  resources :properties

  root 'properties#index'

end
