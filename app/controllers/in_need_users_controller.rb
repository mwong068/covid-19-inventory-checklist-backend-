class InNeedUsersController < ApplicationController

    def index
        @users = HelpfulUser.all
        render json: (@users)
    end

    def show
        @user = HelpfulUser.find(params[:id])
        render json: (@user)
    end
    
end
