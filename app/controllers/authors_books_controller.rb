class AuthorsBooksController < ApplicationController
  def index
    @author = Author.find(params[:id])

    @books = @author.books
  end


end