require 'rails_helper'

RSpec.describe Product, type: :model do
  context ' #Validations' do
    before(:each) do
      @product = Product.create!(title: 'Ssese Tshirt 2018',
         description: 'Banda Tshirt for the Year 2018',
         unit_price: 20000, #present
         discount: 0.0, #between 0 - 1 
         stock: 100, #present
         photo: nil, 
         last_purchased_at: Time.now.to_i, 
         last_purchased_by: 'Jjingo',
         total_purchases: 2, #positive
         club_id: 1,
         product_category_id: 1)#present 
    end

    it ' creation must be successful' do
      expect(Product.all.count).to eq(1)
    end

    it ' ensures title is present' do
      @product.title = nil 
      expect(@product).to_not be_valid
    end

    it ' ensures unit_price is present' do
      @product.unit_price = nil 
      expect(@product).to_not be_valid
    end

    it ' ensures stock is present' do
      @product.stock = nil 
      expect(@product).to_not be_valid
    end

    it ' ensures product_category_id is present' do
      @product.product_category_id = nil 
      expect(@product).to_not be_valid
    end

    it 'ensures unit_price is positive' do
      @product.unit_price = nil 
      expect(@product).to_not be_valid
    end

    it ' ensures discount is positive' do
      @product.discount = -4.3
      expect(@product).to_not be_valid
    end

    it ' ensures correct discount value' do
      @product.discount = 0.2
      expect(@product).to be_valid
    end

    it ' ensures discount is less or equal to 1' do
      @product.discount = 1.5
      expect(@product).to_not be_valid
    end

    it ' ensures total_purchases is positive' do 
      @product.total_purchases = -5
      expect(@product).to_not be_valid
    end

    it ' ensures product_category_id is positive' do
      @product.product_category_id = -55
      expect(@product).to_not be_valid
    end
  end
end
