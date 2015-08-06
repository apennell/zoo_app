class SessionsController < ApplicationController
  def new
  end

  def create
    # user_params = params.require(:user)
    # user = User.confirm(user_params[:email], user_params[:password])
    user = User.find_by_email(params[:email])
    # if user
    #   login(user)
    #   redirect_to user_path(user.id)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
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
