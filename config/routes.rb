Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #Authors Routes

  get "/authors", to: "authors#index"
  get "/authors/new", to: "authors#new"
  get "/authors/:id", to: "authors#show"
  post "/authors", to: "authors#create"

  #Authors Books Routes

  get "/authors/:id/books", to: "authors_books#index"

  #Books Routes

  get "/books", to: "books#index"
  get "/books/:id", to: "books#show"
end
