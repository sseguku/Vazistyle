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
end
