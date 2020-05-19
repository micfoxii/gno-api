class SessionsController < ApplicationController

    def create
        @user = User.find_or_create_by(email: params[:session][:email])

        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id 
            render json: UserSerializer.new(@user), status: :ok
        else
            render json: {
                error: "Invalid Login"
            }
        end
    end

    def get_current_user
        # byebug
        if logged_in?
            render json: UserSerializer.new(current_user)
        else
            render json: {
                error: "Please Login"
            }
        end
    end

    def destroy
        session.clear
        render json: {
            notice: "you are no longer logged in"
        }, status: :ok
    end

end
