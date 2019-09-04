require 'rails_helper'

RSpec.describe Address, type: :model do
    
    before (:each) do
        @address = Address.create!(address: 'Sseguku', address_two: 'Bukoto', district: 'Wakiso', county: 'Kyadondo', sub_county: 'Sabagabo', village: 'Sseguku Cell 4', city_id: 2, postal_code: 256)
    end

    context ' Validation ' do
        it 'ensures to save successfully' do
            expect(Address.all.count).to eq(1)
        end
    
        it 'ensures address presence' do
            @address.address = nil
            expect(@address).to_not be_valid
        end

        it 'ensures city_id presence' do
            @address.city_id = nil 
            expect(@address).to_not be_valid
        end

        it 'ensures city_id to be positive' do
            @address.city_id = -332 
            expect(@address).to_not be_valid
        end
        
    end
end
