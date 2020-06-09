class SessionsController < ApplicationController
   def new
   end

   def create
      session[:name] = params[:name] if !params[:name].blank?
      redirect_to :root if current_user.blank?
   end

   def show
   end

   def destroy
      session.delete :name
   end
end
