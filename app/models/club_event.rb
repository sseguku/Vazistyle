class ClubEvent < ApplicationRecord
    validates   :club_id, 
                :event_id,
                numericality: {only_integer: true, greater_than_or_equal_to: 1},
                presence: true
end
