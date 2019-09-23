class Api::V1::OrdersController < ApplicationController
    def index
        render json: Order.all, status: :ok
    end

    def show
        render json: existing_order, status: :ok
    end

    def create
        render json: Order.create!(data_params)
    end

    def update 
        existing_order.udpate!(data_params)
        render json: existing_order
    end

    def destroy
        existing_order.destroy!
        head :no_content
    end

    def data_params
        params.require(:data).permit(:product_name, :status, :quantity, :unit_cost, :total_cost, :product_id, :address_id, :shipping_id)
    end
end
