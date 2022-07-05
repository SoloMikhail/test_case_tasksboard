Rails.application.routes.draw do
  devise_for :users

  root 'homepage#index'

  #get "/homepage", to: "homepage#index"

  #device indexpage
  #root 'home#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
