class Api::V1::ShippingInfosController < ApplicationController
    def index
        render json: ShippingInfo.all, status: :ok
    end

    def show
        render json: existing_shipping_info, status: :ok
    end

    def create
        render json: ShippingInfo.create!(data_params), status: :ok
    end

    def update 
        existing_shipping_info.update!(data_params)
        render json: existing_shipping_info, status: :ok
    end

    def destroy
        existing_shipping_info.destroy!
        head :no_content
    end

    def data_params
        ShippingInfo.require(:data).permit(:shipping_date, :contact_number, :shipping_cost, :address_id, :product_id, :delivery_status)

    end

    def existing_shipping_info
        ShippingInfo.find(params['id'])
    end
end
