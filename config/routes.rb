Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
  resources :posts
  resources :comments, only: [:new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "posts#index"
end
