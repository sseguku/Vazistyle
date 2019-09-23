class Api::V1::ProductCategoryController < ApplicationController
    def index
        render json: ProductCategory.all, status: :ok
    end

    def show
        render json: existing_product_category, status: :ok
    end

    def create
        render json: ProductCategory.create!(data_params)
    end

    def update
        existing_product_category.update!(data_params)
        render json: existing_product_category, status: :ok
    end

    def destroy
        existing_product_category.destroy!
        head :no_content
    end

    def data_params
        params.require(:data).permit(:name, :description)
    end

    def existing_product_category
        ProductCategory.find(params['id'])
    end
end
