class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_by_auth(request.env["omniauth.auth"])
    session[:user_id] = @user.id
    redirect_to products_path, notice: "Login as #{@user.name}"
  end

  def destroy
    session[:user_id] = nil
    redirect_to products_path, notice: "Successfuly Logout"
  end
end
