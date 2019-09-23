class Api::V1::ClubsController < ApplicationController
    def index
        render json: Club.all, status: :ok
    end

    def show
        render json: existing_club, status: :ok
    end

    def create
        render json: Club.create!(data_params)
    end

    def update 
        existing_club.update!(data_params)
        render json: existing_club, status: :ok
    end

    def destroy
        existing_club.destroy!
        head :no_content        
    end
    
    def data_params
        params.require(:data).permit(:name, :club_type, :fellowship_day, :fellowship_time, :fellowship_location)
    end

    def existing_club
        Club.find(params['id'])
    end
end
