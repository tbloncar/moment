class UsersController < ApplicationController
  include SessionsHelper
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.url_path = @user.create_url_path

    if @user.save
      flash[:success] = "Success! You've created an account!"
      sign_in(@user)
      redirect_to user_url(@user.url_path)
    else
      render 'new'
    end
  end

  def show
    @user = User.find_by_url_path(params[:path])
  end

  private
    def user_params
      params.require(:user).permit(:email, :f_name, :l_name, :password, :password_confirmation, :bio, :avatar)
    end
end