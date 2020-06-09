class SessionsController < ApplicationController


    def new
    end
  
    def index
    end
  
    def create
      session[:name] = params[:name]
      redirect_to '/'
    end
  
    def destroy
      session.delete :name unless :name.nil?
      redirect_to '/'
    end
  end