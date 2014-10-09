class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
      @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: "Your account was created!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "Your account has been updated"
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    session[:user_id] = nil
    redirect_to root_url, alert: "Your account was successfully deleted."
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :remember_me)
  end
end
