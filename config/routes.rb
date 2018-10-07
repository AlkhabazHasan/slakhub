Rails.application.routes.draw do
  resources :details
  resources :travellers
  resources :rooms
  resources :hotels
  resources :flights
  resources :destinations
  resources :tours
  resources :rounds
  resources :invitations
  resources :users
  resources :workspaces
  get 'dashboard/overview'
  get 'dashboard/destination'
  get 'dashboard/flights', to: 'flights#index'
  get 'dashboard/travellers', to: 'travellers#index'
  get 'dashboard/hotels', to: 'hotels#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
