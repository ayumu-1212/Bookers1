class BooksController < ApplicationController
  def top
  end

  def show
  end

  def index
  	@books = Book.find(params[:id])
  	@book = Book.new
  end

  def edit
  end

  def create
  	@book = Book.new(book_params)
  end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
