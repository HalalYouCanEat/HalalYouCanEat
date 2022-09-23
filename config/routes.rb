Rails.application.routes.draw do
  resources :restaurants
  resources :halal_items
  resources :locations
  resources :reviews
  resources :users
  resources :posts
	root "about#app"
  get "about/app"
  get "about/devs"
  get "about/halal"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
