class Api::V1::CommentsController < ApplicationController
    def index
        render json: Comment.all, status: :ok
    end

    def show
        render json: existing_comments, status: :ok
    end

    def create
        render json: Comment.create!(data_params), status: :ok
    end

    def update 
        existing_comments.update!
        render json: existing_comments
    end

    def destroy
        existing_comments.destroy!
        head :no_content
    end

    def data_params
        params.require(:data).permit(:customer_id, :product_id, :message)
    end

    def existing_comments
        Comment.find(params['id'])
    end
end
