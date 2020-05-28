class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
    end
    redirect_to new_user_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
