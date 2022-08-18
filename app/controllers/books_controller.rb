class BooksController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end
  def create
    @lists = List.all
    @list = List.new(list_params)
    if @list.save
      flash[:success] = "Book was successfully created."
      redirect_to book_path(@list.id)
    else
      render "/books/index"
    end
  end
  def show
    @list = List.find(params[:id])
  end
  def edit
    @list = List.find(params[:id])
  end
  def update
    @list = List.find(params[:id])
    @list.update(list_params)
    if @list.save
      flash[:update] = "Book was successfully updated."
      redirect_to book_path(@list.id)
    else
      render "/books/edit.html.erb"
    end
  end
  def destroy
    list = List.find(params[:id])
    if list.destroy
      flash[:success] = "Book was successfully destroyed."
      redirect_to "/books/index"
    end
  end
   private
  def list_params
    params.require(:list).permit(:title,:body)
  end

end
