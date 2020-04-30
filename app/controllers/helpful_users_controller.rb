class HelpfulUsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]
    
    def index
        @users = HelpfulUser.all
        render json: @users
    end

    def show
        @users = HelpfulUser.find(params[:id])
        render json: @user
    end

    def profile
        render json: { user: HelpfulUserSerializer.new(current_user) }, status: :accepted
    end

    def create
        @user = HelpfulUser.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: HelpfulUserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    private
    def user_params
        params.require(:helpful_user).permit(:username, :password, :name, :email, :location, :phone_number, :family_size, :can_deliver, :has_children)
    end
end
