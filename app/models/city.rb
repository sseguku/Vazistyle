class City < ApplicationRecord
    has_one :country
    has_many :addresses

    validates :name, presence: true
    validates :country_id, numericality: {only_integer: true, greater_than_or_equal_to: 1}, presence: true
end
