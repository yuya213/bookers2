class UsersController < ApplicationController
 
  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end
 
  def show
    @users = User.find(params[:id]) 
    @user = current_user
    @book = Book.find(params[:id])
    @books = Book.all
  end

  def edit
     @user = User.find(params[:id])
  end
end
