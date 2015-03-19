class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
  	  redirect_to root_url, notice: "Thank you for registering!"
  	else
  	  render "new"
  	end
  end

  def user_params
  	params.require(:user).permit(:user, :email, :password, :password_confirmation)
  end
end