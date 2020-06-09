class SessionsController < ApplicationController

    def create 
        if params[:name].present?
            session[:name] = params[:name]
            redirect_to secrets_path
        else 
            redirect_to root_path
        end
    end

    def destroy
        session.delete :name
    end
end