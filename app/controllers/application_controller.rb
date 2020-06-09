class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end

   def logged_in?
    if current_user
      render :"secrets/show"
    else
      redirect_to :root
    end
   end

end
