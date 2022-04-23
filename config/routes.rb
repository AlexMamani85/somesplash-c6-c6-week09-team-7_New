Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :categories do
    resources :comments, only: %i[create destroy update]
  end
  resources :photos do
    resources :comments, only: %i[create destroy update]
  end
end
