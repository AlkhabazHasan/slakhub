Rails.application.routes.draw do
  get 'dashboard/overview'
  get 'dashboard/destination'
  get 'dashboard/flight'
  get 'dashboard/traveler'
  get 'dashboard/hotel'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
