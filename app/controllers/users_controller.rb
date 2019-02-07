class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.create(signup_params)
    if @user.save
      flash[:alert] = "Sign up successful"
      redirect_to posts_url 
    else
      render :index
    end
  end

  private
  def signup_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
