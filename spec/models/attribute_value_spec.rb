require 'rails_helper'

RSpec.describe AttributeValue, type: :model do
    context ' #Validations' do
        before(:each) do
            @attribute_value = AttributeValue.create!(value: 'blue', attribute_id: 1)
        end

        it ' ensures successful creation' do 
            expect(AttributeValue.all.count).to eq(1)
        end
        
        it ' ensures value presence' do 
            @attribute_value.value = nil
            expect(@attribute_value).to_not be_valid
        end

        it ' ensures attribute_id presence' do
            @attribute_value.attribute_id = nil
            expect(@attribute_value).to_not be_valid
        end

        it ' ensures attribute_id to be positive' do
            @attribute_value.attribute_id = -22332
            expect(@attribute_value).to_not be_valid
        end        
    end

    context ' #associations' do
        it ' should have one the_attribue' do
            assc = described_class.reflect_on_association(:the_attribute)
            expect(assc.macro).to eq(:has_one) 
        end 

        it ' should have many product_attribute' do 
            assc = described_class.reflect_on_association(:product_attributes)
            expect(assc.macro).to eq(:has_many) 
        end
    end
end
