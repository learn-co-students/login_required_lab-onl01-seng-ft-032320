class SecretsController < ApplicationController


    def index


    end

    def show
        if current_user
            render :show
        else 
            redirect_to(controller:'sessions', action:'new')
        end
    end

    def create
       
    end

    
end
