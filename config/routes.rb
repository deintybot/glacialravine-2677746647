Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# Mapping all routes for Early Bird sign up form on Landing page
  post 'landings/earlybird', to: 'landings#getNotified', as: 'subscribes'
# This is where the root url points to
  root 'landings#index'
end
