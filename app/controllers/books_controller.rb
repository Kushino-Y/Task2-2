class BooksController < ApplicationController
  def index
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @books = Book.all
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    if book.save
      redirect_to book_path(book.id) ,notice:'Book was successfully created.'
    else
      redirect_to "/books/new" ,notice:'入力した内容にエラーがあります。'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      redirect_to book_path , notice:'Book was successfully created.'
    else
      redirect_to edit_books_path ,notice:'入力した内容にエラーがあります。'
    end
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to action: :new
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end