class SecretsController < ApplicationController 

    def show 
        unless current_user 
            redirect_to root_path
        end
    end
end
