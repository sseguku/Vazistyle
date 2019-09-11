require 'rails_helper'

RSpec.describe Customer, type: :model do
 context ' #Validations' do
  before(:each) do
    @customer = Customer.create!(first_name: 'Kisakye', last_name: 'Jjingo', username: 'jkisakye', password: '123456', email: 'sseguku@gmail.com', phone_number: '+256704520128', address_id: 1, club_id: 1, shipping_info_id: 1, active_status: false)
  end

  it 'ensures successful creation' do
    expect(Customer.all.count).to eq(1)
  end

  it 'ensures first_name presence' do
    @customer.first_name = nil 
    expect(@customer).to_not be_valid
  end

  it 'ensures phone_number presence' do
    @customer.phone_number = nil 
    expect(@customer).to_not be_valid
  end

  it 'ensures username presence' do
    @customer.username = nil 
    expect(@customer).to_not be_valid
  end

  it 'ensures password presence' do
    @customer.password = nil 
    expect(@customer).to_not be_valid
  end
 end

  context ' #associations' do 
    it ' should have one address' do
      assc = described_class.reflect_on_association(:address)
      expect(assc.macro).to eq(:has_one)
    end

    it ' should have many comments' do 
      assc = described_class.reflect_on_association(:comments)
      expect(assc.macro).to eq(:has_many)
    end

    it ' should have many ratings' do 
      assc =  described_class.reflect_on_association(:ratings)
      expect(assc.macro).to eq(:has_many)
    end

    it ' should have one club' do 
      assc = described_class.reflect_on_association(:club)
      expect(assc.macro).to eq(:has_one)
    end

    it ' should have one shippinginfo' do
      assc = described_class.reflect_on_association(:shippinginfo)
      expect(assc.macro).to eq(:has_one) 
    end

    it ' should have many orders' do 
      assc = described_class.reflect_on_association(:orders)
      expect(assc.macro).to eq(:has_many)    
    end
  end
end
