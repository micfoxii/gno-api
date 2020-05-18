class SessionsController < ApplicationController

    def create
        @user = User.find_by(email: params[:session][:email])

        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id 
            render json: @user
        else
            render json: {
                error: "Invalid Credentials"
            }
        end
    end

    def getCurrentUser = () => {
        if logged_in?
            render json: current_user
        else
            render json: {
                error: "Please Login"
            }
        }
    end


end
