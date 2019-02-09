class UsersController < ApplicationController

  def index
    @user = User.new
  end

  def create
    @user = User.create(signup_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to posts_url 
      flash[:alert] = "Sign up successful"
    else
      render :index
    end
  end

  private
  def signup_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
