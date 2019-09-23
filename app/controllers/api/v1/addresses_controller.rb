class Api::V1::AddressesController < ApplicationController
    def index
        render json: Address.all, status: :ok
    end

    def show 
        render json: existing_address
    end

    def create
        raise_validation_error unless 
            render json: Address.create!(data_params)
    end

    def update
        existing_address.update!(data_params)
        render json: existing_address
    end

    def destory
        existing_address.destory
        head :no_content 
    end

    def existing_address
        Address.find(params['id'])
    end

    def data_params
        params.require(:data).permit(:address, :address_two, :district, :county, :sub_county, :village, :city_id, :postal_code)
    end
end
