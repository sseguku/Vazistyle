class Api::V1::ClubProductsController < ApplicationController
    def index
        render json: ClubProduct.all, status: :ok
    end

    def show
        render json: existing_club_product, status: :ok
    end

    def create
        render json: ClubProduct.create!(data_params), status: :ok
    end

    def update 
        existing_club_product.udpate!
        render json: existing_club_product
    end

    def destroy
        existing_club_product.destroy!
        head :no_content
    end

    def data_params
        params.require(:data).permit(:product_id, :club_id)
    end

    def existing_club_product
        ClubProduct.find(params['id'])
    end
end
