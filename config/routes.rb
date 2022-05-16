Rails.application.routes.draw do
  devise_for :users
  resources :users
  # get 'articles/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :comments
  end
  # Defines the root path route ("/")
  root "articles#index"
end
