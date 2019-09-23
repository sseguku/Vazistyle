class Api::V1::CitiesController < ApplicationController
    def index
        render json: City.all, status: :ok
    end

    def show
        render json: existing_city, status: :ok 
    end

    def create
        render json: City.create!(data_params)
    end

    def update 
        existing_city.update!(data_params)
        render json: existing_city
    end

    def destroy
        existing_city.destroy!
        head :no_content
    end

    def data_params
        params.require(:data).permit(:name, :country_id)
    end

    def existing_city
        City.find(params['id'])
    end
end
