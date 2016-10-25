Rails.application.routes.draw do
  resources :users
  resources :items
  resources :brands
  
root 'sessions#new'

post '/signin', to: 'sessions#create'

get '/signout', to: 'sessions#destroy'

#get 'items/:id/delete', to: 'items#destroy', as: 'items_destroy'
end
