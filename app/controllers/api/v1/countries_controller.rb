class Api::V1::CountriesController < ApplicationController
    def index
        render json: Country.all, status: :ok
    end

    def show
        render json: existing_countries, status: :ok
    end

    def create
        render json: Country.create!(data_params), status: :ok
    end

    def update 
        existing_countries.udpate!(data_params)
        render json: existing_countries, status: :ok
    end

    def destroy
        existing_countries.destroy!
        head :no_content
    end

    def data_params
        params.require(:data).permit(:name)
    end

    def existing_countries
        Country.find(params['id'])
    end
end
