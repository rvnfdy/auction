# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :check_logged_in
  
  def check_logged_in
    if session[:username].nil?
      redirect_to login_path
    end
  end
end
