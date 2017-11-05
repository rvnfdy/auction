class SessionsController < ApplicationController
  skip_before_action :check_logged_in
  
  def new # sign in
  end

  def create
    username = params[:username]
    password = params[:password]

    user = User.find_by(username: username)
    if user.nil?
      # FAIL
      render :new
    elsif user.authenticate(password)
      # LOG IN
      session[:username] = username
      redirect_to products_path
    else
      render :new
    end
  end

  def delete # sign out
    session.delete(:username)
    redirect_to products_path
  end
end
