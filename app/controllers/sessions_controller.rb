class SessionsController < ApplicationController

  def create
    user = User.authenticate(params[:sign_in_email], params[:sign_in_password])
    if user 
      session[:user_id] = user.id
      # redirect_to post_url, :notice => "Sign In successful"
    else
     redirect_to root_url, :notice => "Email or password incorrect"
    end
  end

end
