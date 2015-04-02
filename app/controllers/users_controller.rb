class UsersController < ApplicationController
  
  def find_or_create
    email = user_params[:email]
    @user = User.find_or_create_by(email: email)
    respond_with @user
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end

end
