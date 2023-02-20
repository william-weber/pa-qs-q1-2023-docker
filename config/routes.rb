Rails.application.routes.draw do
  resources :to_dos, only: [:index, :create, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "to_dos#index"
end
