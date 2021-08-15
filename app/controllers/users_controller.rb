class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show 
    begin
      @user = User.find(params[:id])
    rescue 
      @user = User.find(1)
    end
  end

  def new
    @user = User.new
  end

  def create
    @user =  User.new(user_params) 
    if @user.save
      notice = "User was successfully created."
      reset_session
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
