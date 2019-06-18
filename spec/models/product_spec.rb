require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'validation tests' do 
    
    it 'ensures presence of product_id' do 
      product = Product.new(quantity: 10, category_id: 34, club_id: 32, unit_price: 10000, description: 'New shirt').save 
      expect(product).to eq(false)
    end

    it 'ensures presence of quantity' do       
      product = Product.new(product_id: 10, category_id: 34, club_id: 32, unit_price: 10000, description: 'New shirt').save 
      expect(product).to eq(false)
    end

    it 'ensures presence of category_id' do 
    end

    it 'ensures presence of unit_price' do  
      product = Product.new(product_id: 10, quantity: 10,  category_id: 34, club_id: 32, description: 'Ssese Tshirt 2018').save 
      expect(product).to eq(false)
    end

    it 'ensures presence of description' do
      product = Product.new(product_id: 10,  quantity: 10, category_id: 34, club_id: 32, unit_price: 10000).save 
      expect(product).to eq(false)
    end

    it 'should save successfully.' do 
      product = Product.new(product_id: 10,  quantity: 10, category_id: 34, club_id: 32, unit_price: 10000, description: 'Ssese Tshirt 2018').save 
      expect(product).to eq(true)
    end

  end
  context 'scope tests' do
  end
end
