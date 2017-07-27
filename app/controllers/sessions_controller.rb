class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_by_auth(request.env["omniauth.auth"])
    render html: request.env["omniauth.auth"]
    byebug
  end
end
