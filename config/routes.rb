Rails.application.routes.draw do
  resources :managements
  resources :updates
  resources :supports
  resources :charities
  resources :transactions
  resources :cards
  resources :addresses
  resources :users
  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'
  post '/users/charity', to: 'users#create_charity'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
