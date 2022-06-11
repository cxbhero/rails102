Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    resources :groups do
    member do
      post :join
      post :quit
    end
      resources :posts
  end
  root 'groups#index'


end
