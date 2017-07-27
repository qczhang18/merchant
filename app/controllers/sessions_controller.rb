class SessionsController < ApplicationController
  def create
    render html: request.env["omniauth.auth"]
  end
end
