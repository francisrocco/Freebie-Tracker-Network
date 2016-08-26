Rails.application.routes.draw do
  resources :users
  resources :freebies
  resources :brands, only: [:show, :index]
end
