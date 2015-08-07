class UsersController < ApplicationController
  # before_action :logged_in?, only: [show]

  def new
    @user = User.new
    render :new
  end

  def create
    user = User.create(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to '/users/new'
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  private
    def user_params
      params.require(:user).permit(:email, :username, :password, :password_confirmation)
    end

    def find_user
      @user = User.find(params[:id])
    end
end
