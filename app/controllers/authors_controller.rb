class AuthorsController < ApplicationController
  def index
    @authors = Author.all.most_recently_created
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    
  end

  def create
    author = Author.new({
      name: params[:name],
      born: params[:born],
      alive: (params[:alive] || false)
    })
    author.save 
    redirect_to "/authors"
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    author = Author.find(params[:id])
    author.update({
      name: params[:name],
      born: params[:born],
      alive: (params[:alive] || false)
    })
    author.save
    redirect_to "/authors/#{author.id}"
  end

end