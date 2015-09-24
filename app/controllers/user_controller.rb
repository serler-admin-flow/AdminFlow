class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
      @user = User.new(params[:user])
      if @user.save
        redirect_to user_path, notice: 'User was successfully created.'
        #flash[:notice] = "You signed up successfully"
        #flash[:color]= "valid"
      else
        render "new"
        #flash[:notice] = "Form is invalid"
        #flash[:color]= "invalid"
    end
    
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def login
  end

  def logout
  end
  
end

