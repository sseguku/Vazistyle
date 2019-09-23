class Api::V1::CustomersController < ApplicationController
    def index
        render json: Customer.all, status: :ok
    end

    def show
        render json: existing_customers, status: :ok
    end

    def create
        render json: Customer.create!(data_params)
    end

    def update 
        existing_customers.udpate!(data_params)
        render json: existing_customers, status: :ok
    end

    def destroy
        existing_customers.destroy!
        head :no_content
    end

    def data_params
        params.require(:data).permit(:first_name, :last_name, :email, :phone_number, :address_id, :club_id, :shipping_info_id, :username, :password, :active_status)
    end

    def existing_customers
        Customer.find(params['id'])
    end
end
