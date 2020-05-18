class ApplicationController < ActionController::API

    include ::ActionController::Cookies

    def get_current_user
        User.find_by(id: session[:user_id])
    end 

    def logged_in?
        !!get_current_user
    end
    
end
