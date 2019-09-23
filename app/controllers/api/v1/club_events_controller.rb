class Api::V1::ClubEventsController < ApplicationController
    def index
        render json: ClubEvent.all, status: :ok
    end

    def show
        render json: existing_club_event
    end

    def create
        @club_event = ClubEvent.create(data_params)
        if(@club_event).save!
            render json: @club_event, status: :ok
        else
            render json: @club_event.error, status: :unprocessable_entity
        end
    end

    def update 
        existing_club_event.update!(data_params)
        render json: existing_club_event, status: :ok
    end

    def destroy

    end

    def existing_club_event
        ClubEvent.find(params['id'])
    end

    def data_params
        params.require(:data).permit(:club_id, :event_id)
    end
end
