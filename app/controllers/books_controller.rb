class BooksController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end
  # def new
  #   @list = list.new
  # end
  def create
    list = List.new(list_params)
    list.save
    redirect_to "/"
  end
  def show
    # list = List.find(params[:id])
  end
  def edit
    list = list.find(params[:id])
  end
  def update
    
  end
  def destroy
    
  end
   private
  def list_params 
    params.require(:list).permit(:title,:body)
  end 

end
