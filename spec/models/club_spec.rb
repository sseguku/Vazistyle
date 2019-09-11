require 'rails_helper'

RSpec.describe Club, type: :model do
  context ' #Validations' do
    before(:each) do
      @club = Club.create!(name: 'Ssese Islands',
         club_type: 'Rotaract', 
         fellowship_day: 'Tuesday', 
         fellowship_time: '3:00', 
         fellowship_location: 'Nommo Gallery')
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
  end 

  context ' #associations' do
    it ' should have one address' do 
      assc = described_class.reflect_on_association(:address)      
      expect(assc.macro).to eq(:has_one)
    end

    it ' should have many club events' do 
      assc = described_class.reflect_on_association(:events)      
      expect(assc.macro).to eq(:has_many)
    end

    it ' should have product through club_product' do
      assc = described_class.reflect_on_association(:products)      
      expect(assc.macro).to eq(:has_many)
    end

    it ' should have many customers' do 
      assc = described_class.reflect_on_association(:customers)      
      expect(assc.macro).to eq(:has_many)
    end
  end
end
