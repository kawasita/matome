class BooksController < ApplicationController
    
    def index
      @books = Book.all
      @book = Book.new
    end
    
    def show
      @book = Book.find(params[:id])
      @book_new = Book.new
      @book_comment = BookComment.new
    end
    
    def new
      @book = Book.new
    end
    
    def create
      book = Book.new(book_params)
      book.user_id = current_user.id
      book.save
    end
    
    private
    
    def book_params
      params.require(:book).permit(:book_title, :description, :rate)
    end
end
