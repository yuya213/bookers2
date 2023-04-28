class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]
 
  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end
 
  def show
    @user = current_user
    @books = Book.all
  end

  def edit
     @user = User.find(params[:id])
  end
  
  def update
  	@user = User.find(params[:id])
  	if  @user.update(user_params)
  	   flash[:notice] = "You have updated user successfully."
       redirect_to user_path(@user) 
    else
    	 @books = Book.all
     	 render :show
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to(books_path) unless @user == current_user
  end


end


