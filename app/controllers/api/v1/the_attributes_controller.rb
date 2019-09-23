class Api::V1::TheAttributesController < ApplicationController
    def index
        render json: TheAttribute.all, status: :ok
    end

    def show
        render json: existing_attribute, status: :ok
    end

    def create
        render json: TheAttribute.create!(data_params), status: :ok
    end

    def update 
        existing_attribute.update!(data_params)
        render json: existing_attribute
    end

    def destroy
        existing_attribute.destroy!
        head :no_content
    end

    def data_params
    end

    def existing_attribute
        TheAttribute.find(params['id'])
    end
end
