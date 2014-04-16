Airbnb::Application.routes.draw do

  resources :properties

  root 'properties#index'

end
