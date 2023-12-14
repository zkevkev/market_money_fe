Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get '/markets', to: 'markets#index'
  # get '/markets/:id', to: 'markets#show'
  # get '/markets/vendors/:id', to: 'vendors#show'
  resources :markets, only: [:index, :show]
  resources :vendors, only: :show
end
