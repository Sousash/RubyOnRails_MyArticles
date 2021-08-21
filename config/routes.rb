Rails.application.routes.draw do
  resources :categories
  devise_for :users
  #get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get "bienvenida", to: "home#index"
  get "perfil", to: "users#edit"

  resources :users, only: [:update]
  #get "articles/user/:user_id", to: "articles#from_author"

  resources :articles do
    get "user/:user_id", to: "articles#from_author", on: :collection
  end


  #get "articles", to: "articles#index"

  #get "articles/new", to: "articles#new", as: :new_articles
  #post "articles", to: "articles#create"

  #get "articles/:id", to: "articles#show"

  #get "articles/:id/edit", to: "articles#edit"
  #patch "/articles/:id", to: "articles#update", as: :article

  #delete "/articles/:id", to: "articles#destroy"


end
