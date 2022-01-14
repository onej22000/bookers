class BooksController < ApplicationController
  def new
    @books = Book.all
    @book = Book.new

  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
   @book = Book.new(book_params)
   @book.save
   redirect_to '/books'

  end

  def show
   @book = Book.find(params[:id])
  end

  def edit
   @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  if book.save
     flash[:notice] = "book was successfully update."
     redirect_to("/books/show")
   else
     render("books/edit")
   end
  end

  def destroy
   book = Book.find(params[:id])
   book.destroy
   redirect_to '/books'
  end

 private

  def book_params
   params.require(:book).permit(:title, :body)
  end


end
