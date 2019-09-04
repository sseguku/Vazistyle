require 'rails_helper'

RSpec.describe Attribute, type: :model do
    context 'Validations' do
        before(:each) do
           @attribute = Attribute.create!(name: 'color', description: 'This is the look for the product') 
        end

        it 'ensures name presence' do
            @attribute.name = nil
            expect(@attribute).to_not be_valid
        end
    end
end
