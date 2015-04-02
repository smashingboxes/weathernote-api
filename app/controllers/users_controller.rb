class UsersController < ApplicationController
  
  def find_or_create
    email = user_params[:email]
    @user = User.where(email: email).first || User.create(email: email)
    respond_with @user
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end

end
