require 'rails_helper'

RSpec.describe Product, type: :model do
    context ' #Validations ' do 
        before(:each) do 
            @product = Product.create!(title: 'Ssese Tshirt', description: '2018', stock: 3, unit_price: 25000, photo: nil, club_id: 23, product_type_id: 21)
        end

        it 'ensures correct creation' do
            expect(Product.all.count).to eq(1)
        end

        it 'ensures successful save' do
            expect(@product).to be_valid
        end

        it 'ensures title presence' do
            @product.title = nil
            expect(@product).to_not be_valid
        end

        it 'ensures stock presence' do
            @product.stock = nil
            expect(@product).to_not be_valid
        end

        it 'ensures stock to be a postive' do
            @product.stock = -32
            expect(@product).to_not be_valid
        end

        it 'ensures unit_price presence' do
            @product.unit_price = nil 
            expect(@product).to_not be_valid 
        end

        it 'ensures unit_price is positive' do
            @product.unit_price = -34000
            expect(@product).to_not be_valid

        end

        it 'ensures product_type_id presence' do
            @product.product_type_id = nil
            expect(@product).to_not be_valid
        end

        it 'ensures product_type_id is postive' do
            @product.product_type_id = -34323
            expect(@product).to_not be_valid
        end
    end
end
