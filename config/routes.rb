Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'reserves/index'

  get 'users/home_top'
  get 'user/sign_up'
  devise_for :users
  #get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :reserves
  resources :users

end
