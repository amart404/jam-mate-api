class InformationController < ApplicationController
    def index
        @information = Information.all
        render json: @information
    end 

    def show
        @information = Information.find(params[:id])
        render json: @information
    end

    def create
        @information = Information.create({
            name: params[:name],
            instrument: params[:instrument],
            genre: params[:genre],
            experience: params[:experience],
            user_id: params[:user_id]
        })
        render json: @information
    end 

    def update
        @information = Information.find(params[:id])

        @information.update({
            name: params[:name],
            instrument: params[:instrument],
            genre: params[:genre],
            experience: params[:experience],
            user_id: params[:user_id]
        })
        render json: @information
    end

    def delete
        @information = Information.find(params[:id])

        @information.destroy
    end
end