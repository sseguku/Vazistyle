class Api::V1::ProductAttributesController < ApplicationController
    def index
       render json: ProductAttribute.all, status: :ok
    end

    def show
        render json: existing_product_attribute, status: :ok
    end

    def create
        render json: ProductAttribute.create!(data_params)
    end

    def update 
        existing_product_attribute.update!
        render json: existing_product_attribute, status: :ok
    end

    def destroy
        existing_product_attribute.destroy!
        head :no_content
    end

    def data_params
        params.require(:data).permit(:attribute_id, :attribute_value_id, :product_id)
    end

    def existing_product_attribute
        ProductAttribute.find(params['id'])
    end
end
