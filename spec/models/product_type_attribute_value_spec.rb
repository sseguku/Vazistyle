require 'rails_helper'

RSpec.describe ProductTypeAttributeValue, type: :model do
    context ' #Validations' do
        before(:each) do
            @product_type_attribute_value = ProductTypeAttributeValue.create!(product_type_id: 23, attribute_value_id: 44)
        end

        it ' ensures creation' do
            expect(ProductTypeAttributeValue.all.count).to eq(1)
        end

        it ' ensures successful save' do
            expect(@product_type_attribute_value).to be_valid
        end

        it ' ensures product_type_id presence' do
            @product_type_attribute_value.product_type_id = nil
            expect(@product_type_attribute_value).to_not be_valid
        end

        it ' ensures product_type_id to be positive' do
            @product_type_attribute_value.product_type_id = -1
            expect(@product_type_attribute_value).to_not be_valid
        end
        
        it ' ensures product_type_id to be integer' do
            @product_type_attribute_value.product_type_id = 3.4
            expect(@product_type_attribute_value).to_not be_valid
        end

        it ' ensures attribute_value_id presence' do
            @product_type_attribute_value.attribute_value_id = nil
            expect(@product_type_attribute_value).to_not be_valid
        end

        it ' ensures attribute_value_id to be positive' do
            @product_type_attribute_value.attribute_value_id = -33
            expect(@product_type_attribute_value).to_not be_valid
        end
    end   
end
