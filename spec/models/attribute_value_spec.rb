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
end
