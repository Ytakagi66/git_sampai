Rails.application.routes.draw do
  root to: "home#index"  
  resources :shrines
  delete  'shrines/:id'  => 'shrines#destroy'  
  resources :temples
  resources :explanatories
  devise_for :users, controllers: {
      sessions:      'users/sessions',
      passwords:     'users/passwords',
      registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
