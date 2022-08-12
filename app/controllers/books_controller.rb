class BooksController < ApplicationController
  def index
    @lists = List.all
  end
  def new
    @list = list.new
  end
  def create
    @list = List.new
    @list.save
    redirect_to 
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
  
  
end
