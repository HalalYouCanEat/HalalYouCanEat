Rails.application.routes.draw do
  resources :restaurants
  resources :halal_items
  resources :locations
  resources :reviews
  resources :users
  resources :posts
	root "static_pages#home"
  get  "/about/app",    to: "static_pages#about_app"
  get  "/about/devs",   to: "static_pages#about_devs"
  get  "/about/halal",  to: "static_pages#about_halal"
	get '/signup', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
