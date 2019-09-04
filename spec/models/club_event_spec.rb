require 'rails_helper'

RSpec.describe ClubEvent, type: :model do
  context 'Validations' do
    before (:each) do
      @clubevent = ClubEvent.create!(club_id: 21, event_id: 1)
    end

    it 'ensures successful creation' do
      expect(ClubEvent.all.count).to eq(1)
    end

    it 'ensures club_id presence' do
      @clubevent.club_id = nil
      expect(@clubevent).to_not be_valid
    end
    
    it 'ensures event_id presence' do
      @clubevent.event_id = nil
      expect(@clubevent).to_not be_valid
    end

    it 'ensures club_id to be positive' do
      @clubevent.club_id = -23
      expect(@clubevent).to_not be_valid
    end
    
    it 'ensures event_id to be postive' do
      @clubevent.event_id = -3
      expect(@clubevent).to_not be_valid
    end

    it 'ensures club_id to non zero' do
      @clubevent.club_id = 0
      expect(@clubevent).to_not be_valid
    end
    
    it 'ensures event_id non zero' do
      @clubevent.event_id = 0
      expect(@clubevent).to_not be_valid
    end
  end

end
