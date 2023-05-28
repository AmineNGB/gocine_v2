Rails.application.routes.draw do
  get 'sessions/index'
  get 'sessions/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/edit'
  get 'sessions/update'
  get 'sessions/destroy'
  resources :movies
  devise_for :users
  resources :cinemas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
