Rails.application.routes.draw do
  root to: 'public#index'

  resources :packages
end
