 Rails.application.routes.draw do
    devise_for :users
    resources :movies do
      resources :reviews
    end
    root 'movies#index'
    get '/movies/search', to: 'movies#search', as: 'search_movies'
  end

