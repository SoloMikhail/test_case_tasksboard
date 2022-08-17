Rails.application.routes.draw do
  devise_for :users

  resources :projects do
    resources :jobs, only: %i[create destroy]
  end
  root 'homepage#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
