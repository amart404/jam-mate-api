class LocationsController < ApplicationController
    def index
        @locations = Location.all
        render json: @locations
    end 

    def show
        @location = Location.find(params[:id])
        render json: @location
    end

    def create
        @location = Location.create({
            city: params[:city],
            state: params[:state],
            user_id: params[:user_id]
        })
        render json: @location
    end 

    def update
        @location = Location.find(params[:id])

        @location.update({
            city: params[:city],
            state: params[:state],
            user_id: params[:user_id]
        })
        render json: @location
    end

    def delete
        @location = Location.find(params[:id])

        @location.destroy
    end
end