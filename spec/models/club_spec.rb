require 'rails_helper'

RSpec.describe Club, type: :model do
  context ' #Validations' do
    before(:each) do
      @club = Club.create!(name: 'Ssese Islands', club_type: 'Rotaract', fellowship_day: 'Tuesday', fellowship_time: '3:00', fellowship_location: 'Nommo Gallery', product_id: 1)
    end

    it ' ensures successful creation' do
      expect(Club.all.count).to eq(1)
    end

    it ' ensures name presence' do
      @club.name = nil
      expect(@club).to_not be_valid
    end

    it ' ensures club_type presence' do
      @club.club_type = nil
      expect(@club).to_not be_valid
    end

    it ' ensures id presence' do
      @club.id = nil
      expect(@club.id).to_not be_valid
    end
  end
 
end
