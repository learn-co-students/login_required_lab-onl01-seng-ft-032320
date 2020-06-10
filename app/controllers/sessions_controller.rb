class SessionsController < ApplicationController
    before_action :current_user
    def new
    end

    def create
        if params[:name].nil?
            redirect_to login_path
        elsif params[:name].empty?
            redirect_to login_path
        else
            session[:name] = params[:name]
            redirect_to logins_path
        end
    end

    def index
      
    end

    def destroy
        session.delete :name
        redirect_to login_path
    end
end