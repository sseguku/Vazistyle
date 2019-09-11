class ClubProduct < ApplicationRecord
    #belongs_to :club 
    #belongs_to :product

    validates :club_id, :product_id, numericality: {only_integer: true, greater_than: 0}, presence: true
end
