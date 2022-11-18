Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :restaurants, only: [:index, :show, :create]
      
    end
  end
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
  # TODO : (↓ uncomment upon implementing chapter 11 ↓)
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  root 'static_pages#home'
  get  '/about/app',    to: 'about#about_app'
  get  '/about/devs',   to: 'about#about_devs'
  get  '/about/halal',  to: 'about#about_halal'
  get  '/about/assets',  to: 'about#about_assets'
  get '/signup', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
