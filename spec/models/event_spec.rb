require 'rails_helper'

RSpec.describe Event, type: :model do
  context ' #Validations ' do  
    before(:each) do
      @event = Event.create!(name: 'Banda Phase II', event_type: 'project', description: 'main club project')
    end
  
    it 'ensures successful creation' do
      expect(Event.all.count).to eq(1)
    end

    it 'ensures name presence' do
      @event.name = nil 
      expect(@event).to_not be_valid
    end

    it 'ensures event_type presence' do 
      @event.event_type = nil 
      expect(@event).to_not be_valid
    end
  end

  context ' #associatons' do 
    it ' should have clubs through club event' do 
      assc = described_class.reflect_on_association(:clubs)
      expect(assc.macro).to eq(:has_many)

    end
  end
end
