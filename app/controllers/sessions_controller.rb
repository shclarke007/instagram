class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.authenticate(sign_in_params)
    if user
      session[:user_id] = user.id
      redirect_to post_url, :notice => "Sign In successful"
    else
      flash.now.alert = "Email or passowrd incorrect"
      render :new
    end
  end

  def sign_in_params
    params.require(:user).permit(:sign_in_email, :sign_in_password)
  end
end
