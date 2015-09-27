class SessionController < ApplicationController

  def new
  end

  def create
      user = User.find_by(email: params[:session][:UserEmailID].downcase)
    if user && user.authenticate(params[:session][:UserPassword])
      # Log the user in and redirect to the user's show page.
    else
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
  end
end