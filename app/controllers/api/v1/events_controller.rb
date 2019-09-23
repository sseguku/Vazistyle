class Api::V1::EventsController < ApplicationController
    def index
        render json: Event.all, status: :ok
    end

    def show
        render json: existing_events, status: :ok
    end

    def create
        render json: Event.create!(data_params), status: :ok
    end

    def update 
        existing_events.udpate!(data_params)
        render json: existing_events
    end

    def destroy
        existing_events.destroy!
        head :no_content
    end

    def data_params
        params.require(:data).permit(:name, :event_type, :description)
    end

    def existing_events
        Event.find(params['id'])
    end
end
