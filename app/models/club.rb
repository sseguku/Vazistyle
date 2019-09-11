class Club < ApplicationRecord
    has_many :products, through: :club_products
    has_many :customers
    has_many :events, through: :club_events
    has_one :address


    validates :name, :club_type, presence: true
    validates :id, uniqueness: true
end
