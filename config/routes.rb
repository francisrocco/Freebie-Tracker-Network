Rails.application.routes.draw do
  resources :users
  resources :items
  resources :brands
  resources :user_items

root 'sessions#new'

post '/signin', to: 'sessions#create'

delete '/signout', to: 'sessions#destroy'

delete '/items/:id', to: 'items#destroy'
end
