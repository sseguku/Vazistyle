require 'rails_helper'

RSpec.describe ProductType, type: :model do
    context 'Validation' do
        before(:each) do 
            @product_type = ProductType.create!(name: 'Clothes', description: 'To ware')
        end

        it ' ensures creation ' do
            expect(ProductType.all.count).to eq(1)
        end

        it ' ensures save successful' do
            expect(@product_type).to be_valid
        end

        it ' ensures name presence' do 
            @product_type.name = nil
            expect(@product_type).to_not be_valid
        end
    end
end
