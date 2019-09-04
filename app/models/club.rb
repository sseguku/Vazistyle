class Club < ApplicationRecord
    validates :name, :club_type, presence: true
end
