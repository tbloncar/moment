class SessionsController < ApplicationController
  include SessionsHelper
  def new

  end

  def create
    @user = User.find_by_email(params[:email])
    if @user.authenticate(params[:password])
      sign_in(@user)
      redirect_to user_url(@user.url_path)
    else
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end