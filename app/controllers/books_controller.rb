class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end
  def create
    @books = Book.all
    @book = Book.new(list_params)
    if @book.save
      flash[:success] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      render "/books/index.html.erb"
    end
  end
  def show
   @book = Book.find(params[:id])
  end
  def edit
    @book = Book.find(params[:id])
  end
  def update
    @book = Book.find(params[:id])
    @book.update(list_params)
    if @book.save
      flash[:update] = "Book was successfully updated."
      redirect_to book_path(@book.id)
    else
      render "/books/edit.html.erb"
    end
  end
  def destroy
    book = Book.find(params[:id])
    if book.destroy
      flash[:success] = "Book was successfully destroyed."
      redirect_to "/books"
    end
  end
   private
  def list_params
    params.require(:book).permit(:title,:body)
  end

end
