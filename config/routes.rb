Rails.application.routes.draw do
  resources :restaurants do
		collection do
      get 'list'
			get 'search'
    end
	end
  resources :halal_items
  resources :locations
  resources :reviews
  resources :users
  resources :posts
	root "static_pages#home"
  get  "/about/app",    to: "about#about_app"
  get  "/about/devs",   to: "about#about_devs"
  get  "/about/halal",  to: "about#about_halal"
  get  "/about/assets",  to: "about#about_assets"
	get '/signup', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
