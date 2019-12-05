class UsersController < ApplicationController
    skip_before_action :authenticate_request, only: [:create]

    def create
        @user = User.create({
            email: params[:email],
            password: params[:password]
        })
    end

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])

        render json: @user
    end 

    def delete
        @user = User.find(params[:id])

        @user.destroy
    end
end