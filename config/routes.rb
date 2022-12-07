Rails.application.routes.draw do
  # API resources
  namespace :api do
    namespace :v1 do
      resources :restaurants, only: %i[index show create]
    end
  end
  resources :restaurants do
    collection do
      get 'list'
      get 'search'
    end
  end

  # Resources in use
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: %i[new create edit update]
  resources :reviews, only: %i[create destroy index show edit update]

  # Resource graveyard
  resources :halal_items
  resources :locations
  resources :posts

  root 'static_pages#home'
  get  '/about/app', to: 'about#about_app'
  get  '/about/devs', to: 'about#about_devs'
  get  '/about/halal', to: 'about#about_halal'
  get  '/about/assets', to: 'about#about_assets'
  get '/signup', to: 'users#new'
  get '/unapproved', to: 'restaurants#unapproved_restaurants'
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get 'favorites/update'
end
