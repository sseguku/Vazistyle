require 'rails_helper'

RSpec.describe TheAttribute, type: :model do
  context ' #Validations' do
    before(:each) do
      @the_attribute = TheAttribute.create!(name: ' color', product_category_id: 1)
    end

    it ' ensures successful creation' do
      expect(TheAttribute.all.count).to eq(1)
    end

    it ' ensures name presence' do
      @the_attribute.name = nil
      expect(@the_attribute).to_not be_valid 
    end

    it ' ensures product_category_id presence' do
      @the_attribute.product_category_id = nil
      expect(@the_attribute).to_not be_valid 
    end

    it ' ensures product_category_id is positive' do
      @the_attribute.product_category_id = -4
      expect(@the_attribute).to_not be_valid 
    end
  end
end
