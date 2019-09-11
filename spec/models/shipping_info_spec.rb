require 'rails_helper'

RSpec.describe ShippingInfo, type: :model do
  context ' #validations ' do 
    before(:each) do 
      @shipping_info = ShippingInfo.create!(
        shipping_date: Time.new(2019), 
        contact_number: '256704222333', 
        shipping_cost: 3242, 
        address_id: 1, 
        product_id: 1, 
        delivery_status: true)
    end

    it ' ensures successful creation' do 
      expect(ShippingInfo.all.count).to eq(1)
    end

    it ' ensures shipping_date presence' do 
      @shipping_info.shipping_date = nil 
      expect(@shipping_info).to_not be_valid
    end
  
    it ' ensures contact_number presence' do 
      @shipping_info.contact_number = nil 
      expect(@shipping_info).to_not be_valid
    end

    it ' ensures shipping_cost presence' do 
      @shipping_info.shipping_cost = nil 
      expect(@shipping_info).to_not be_valid
    end

    
    it ' ensures shipping_cost is positive' do 
      @shipping_info.shipping_cost = -22322
      expect(@shipping_info).to_not be_valid
    end
  end

  context ' #associations' do
    it ' should have many orders' do
      assc = described_class.reflect_on_association(:orders)
      expect(assc.macro).to eq(:has_many) 
    end

    it ' should have many customers' do 
      assc = described_class.reflect_on_association(:orders)
      expect(assc.macro).to eq(:has_many)
    end
  end
end
