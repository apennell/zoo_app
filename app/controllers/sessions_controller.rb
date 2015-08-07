class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user.authenticate(params[:password]) 
      login(@user)
      redirect_to user_path(@user.id)
    else
      flash[:error] = "Could not find a match for that password and email. Please try again or sign up."
      redirect_to "/login"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
