Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #Authors Routes

  get "/authors", to: "authors#index"
  get "/authors/new", to: "authors#new"
  get "/authors/:id", to: "authors#show"
  post "/authors", to: "authors#create"
  get "/authors/:id/edit", to: "authors#edit"
  patch "/authors/:id", to: "authors#update"

  #Authors Books Routes

  get "/authors/:id/books/new", to: "authors_books#new"
  get "/authors/:id/books", to: "authors_books#index"
  post "/authors/:id/books", to: "authors_books#create"

  #Books Routes

  get "/books", to: "books#index"
  get "/books/:id", to: "books#show"
  get "/books/:id/edit", to: "books#edit"
  patch "/books/:id", to: "books#update"
end
