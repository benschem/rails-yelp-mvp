Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  # root 'restaurants#index'
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: 'review_new'
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
  # delete 'reviews/:id', to: 'reviews#destroy'

  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end
