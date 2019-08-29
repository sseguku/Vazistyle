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
end
