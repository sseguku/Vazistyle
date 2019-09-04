class Event < ApplicationRecord
    validates :name, :event_type, presence: true
end
