class SessionController < ApplicationController

  def new
  end

  def create
    user = User.authenticate(params[:session][:user_email_id], params[:session][:user_password])
  
    if user.nil?
      flash.now[:error] = "Invalid email/password combination."
      render :new
    else
      sign_in user
      redirect_to user
      #redirect_to user
    end
  end

  def destroy
    sign_out
    redirect_to signin_path
  end
end
