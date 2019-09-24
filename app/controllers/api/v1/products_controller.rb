class Api::V1::ProductsController < ApplicationController
   

    def index
       render json: Product.all, status: :ok 
    end
    
    def show
        render json: existing_product
    end

    def create 
        render json: Product.create!(data_params)
    end

    def update
        existing_product.update!(data_params)
        render json: existing_product
    end

    def destroy
        existing_product.destroy
        head :no_content
    end

    def data_params
        Product.require(:data).permit(:title, :description, :unit_price, :discount, :stock, :photo, :last_purchased_at, :last_purchased_by, :total_purchases, :product_category_id)
    end

    def existing_product
        Product.find(params['id'])
    end
end
