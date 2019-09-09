require 'rails_helper'

RSpec.describe ProductAttribute, type: :model do
  context 'Validations' do 
    before(:each) do 
      @product_attribute = ProductAttribute.create!(attribute_id: 1, attribute_value_id: 1, product_id: 1)
    end

    it ' ensures successful creation' do 
      expect(ProductAttribute.all.count).to eq(1)
    end

    it ' ensures attribute_id presence' do 
      @product_attribute.attribute_id = nil       
      expect(@product_attribute).to_not be_valid
    end

    it ' ensures attribute_value_id presence' do 
      @product_attribute.attribute_value_id = nil      
      expect(@product_attribute).to_not be_valid 
    end

    it ' ensures product_id presence' do 
      @product_attribute.product_id = nil 
      expect(@product_attribute).to_not be_valid
    end   

    it ' ensures positive attribute_id' do 
      @product_attribute.attribute_id = -232       
      expect(@product_attribute).to_not be_valid
    end

    it ' ensures positive attribute_value_id' do 
      @product_attribute.attribute_value_id = -9382     
      expect(@product_attribute).to_not be_valid 
    end

    it ' ensures positive product_id ' do 
      @product_attribute.product_id = 0 
      expect(@product_attribute).to_not be_valid
    end

  end
end
