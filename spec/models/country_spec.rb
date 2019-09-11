require 'rails_helper'

RSpec.describe Country, type: :model do
    context 'Validation' do 
        before(:each){@country = Country.create!(name: 'Uganda')}

        it 'Successful Creation' do
            expect(Country.all.count).to eq(1)
        end

        it 'ensures name presence' do
            @country.name = nil
            expect(@country).to_not be_valid
        end

       
    end

    context ' #associations' do
        it  ' should have many cities' do 
            assc =   described_class.reflect_on_association(:cities) 
            expect(assc.macro).to eq(:has_many)
        end       
    end
end
