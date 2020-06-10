class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
      @user ||= session[:name] if logged_in?
  end

  def logged_in?
    !!session[:name]
  end

end
