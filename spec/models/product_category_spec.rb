require 'rails_helper'

RSpec.describe ProductCategory, type: :model do
  context '#Validations' do 
    before(:each) do
      @product_category = ProductCategory.create!(name: 'Clothes', description: 'This are clothes')
    end

    it ' ensures successful creation' do 
      expect(ProductCategory.all.count).to eq(1)
    end

    it ' ensures name presence' do
      @product_category.name = nil 
      expect(@product_category).to_not be_valid
    end
  end

  context ' #Associations' do
    it 'should have many the_attributes' do
       
      #  expect(ProductCategory.reflect_on_association(:the_attributes).macro).to eq(:has_many)
    end
  end
end
