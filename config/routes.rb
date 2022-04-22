Rails.application.routes.draw do
  get "comments/index"
  get "photos/index"
  get "categories/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :categories
  resources :photos
  resources :comments, only: %i[new create destroy]
end
