class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(signup_params)
    if @user.save
      flash[:notice] = "Sign up successful"
      redirect_to posts_url 
    else
      render :new
    end
  end

  private
  def signup_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
