class Club < ApplicationRecord
    validates :name, :club_type, presence: true
    validates :id, uniqueness: true
end
