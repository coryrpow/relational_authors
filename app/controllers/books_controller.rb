class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update({
      title: params[:title],
      published: params[:published],
      in_print: (params[:in_print] || false),
      translated_english: (params[:translated_english] || false)
    })
    book.save
    redirect_to "/books/#{book.id}"
  end

end