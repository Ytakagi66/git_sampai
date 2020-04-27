Rails.application.routes.draw do

  resources :explanatories
  devise_for :users, controllers: {
      sessions:      'users/sessions',
      passwords:     'users/passwords',
      registrations: 'users/registrations'
  }
  root to: "home#index"
  resources :shrines
  delete  'shrines/:id'  => 'shrines#destroy'  
  resources :temples
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
