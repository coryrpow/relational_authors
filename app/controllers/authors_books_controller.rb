class AuthorsBooksController < ApplicationController
  def index
    @author = Author.find(params[:id])

    if params[:sort] == "alphabetical"
      @author_books = @author.books.alphabetical_books
    else
      @author_books = @author.books
    end

  end

  def new
    @author = Author.find(params[:id])

    @books = @author.books
  end

  def create
    author = Author.find(params[:id])
    book = author.books.new({
      title: params[:title],
      published: params[:published],
      in_print: (params[:in_print] || false),
      translated_english: (params[:translated_english] || false)
    })
    book.save 
    redirect_to "/authors/#{author.id}/books"
  end


end