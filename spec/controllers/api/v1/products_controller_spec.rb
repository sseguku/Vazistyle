require 'rails_helper'

RSpec.describe Api::V1::ProductsController, type: :controller do
    let!(:pdt1){ Product.create!(title: 'Ssese Tshirt 2018',
        description: 'Banda Tshirt for the Year 2018',
        unit_price: 20000, #present
        discount: 0.0, #between 0 - 1 
        stock: 100, #present
        photo: nil, 
        last_purchased_at: Time.now.to_i, 
        last_purchased_by: 'Jjingo',
        total_purchases: 2, #positive
        product_category_id: 1) }

    context ' #index' do 
        before do 
            get :index
        end
    
        it 'should be a successful response' do
            expect(response).to have_http_status(:success)
        end
        
        it ' should return all products' do 
            expect(JSON.parse(response.body).size).to eq(1)
        end
    end

    context ' #show' do 
    end

    context ' #create' do
    end

    context ' #update' do
    end

    context ' #destroy' do
    end

end
