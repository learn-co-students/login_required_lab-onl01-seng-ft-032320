class SessionsController < ApplicationController

    def new 
    end 

    def create 
        if session[:name] != "" || nil
            session[:name] = params[:name]
            redirect_to root_path
        else
            redirect_to root_path
        end
    end 

    def home 
    end

    def destroy 
        session.delete :name
    end
end