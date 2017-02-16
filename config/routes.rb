Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :circus
  resources :cars
  resources :clowns

  # http://guides.rubyonrails.org/routing.html#nested-resources
  resources :circus do
    resources :clowns
  end

end
