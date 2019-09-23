class Api::V1::RatingsController < ApplicationController
    def index
        render json: Rating.all, status: :ok
    end

    def show
        render json: existing_rating, status: :ok
    end

    def create
        render json: Rating.create!(data_params)
    end

    def update 
        existing_rating.update!(data_params)
        render json: existing_rating, status: :ok
    end

    def destroy
        existing_rating.destroy!
        head :no_content
    end

    def data_params
        params.require(:data).permit(:customer_id, :product_id, :value)
    end

    def existing_rating
        Rating.find(params['id'])
    end    
end
