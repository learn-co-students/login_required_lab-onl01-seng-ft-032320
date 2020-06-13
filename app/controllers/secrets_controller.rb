class SecretsController < ApplicationController

  before_action :require_login
  
  def index
  end
  
  
  def new
  end

  

  def show
    
  end

  private
 
  def require_login
    unless session.include? :name
      redirect_to "/login"
    end
  end


end
