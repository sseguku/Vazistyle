require 'rails_helper'

RSpec.describe City, type: :model do
    context 'Validation' do
        before(:each) do
            @city = City.create!(name: 'Kampala', country_id: 12)
        end

        it 'ensures successful save' do
            expect(City.all.count).to eq(1)
        end

        it 'ensures name presence' do
            @city.name = nil
            expect(@city).to_not be_valid
        end

        it 'ensures country_id presence' do
            @city.country_id = nil
            expect(@city).to_not be_valid
        end
    end
end
