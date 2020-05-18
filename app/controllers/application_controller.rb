class ApplicationController < ActionController::API

    include ::ActionController::Cookies

    def current_user

    end 
    
    def logged_in?
        !!current_user
    end
end
