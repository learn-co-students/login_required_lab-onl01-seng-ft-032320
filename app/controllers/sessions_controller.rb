class SessionsController < ApplicationController

  def home
  end
  
  def new
  end

  def create 
    if params[:name].nil? || params[:name].empty?
      redirect_to new_session_path
    else
    session[:name] = params[:name]
    redirect_to root_path
    end
  end

  def destroy
    session.delete :name
  end

end
