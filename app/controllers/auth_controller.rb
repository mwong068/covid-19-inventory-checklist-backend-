class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        @user = HelpfulUser.find_by(username: user_login_params[:username])
        if @user && @user.authenticate(user_login_params[:password])
            token = encode_token({ user_id: @user.id })
            render json: { user: HelpfulUserSerializer.new(@user), jwt: token }, status: :accepted
        else
            render json: { message: 'Invalid username or password' }, status: :unauthorized
        end
    end

    private

    def user_login_params
        params.require(:helpful_user).permit(:username, :password)
    end
end
