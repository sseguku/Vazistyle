class Event < ApplicationRecord
    has_many :clubs, through: :club_event


    validates :name, :event_type, presence: true
end
