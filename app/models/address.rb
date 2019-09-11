class Address < ApplicationRecord
    has_one :city
    has_many :orders
    has_many :customers
    has_many :clubs

    


    validates :address, presence: true
    validates :city_id, numericality: {only_integer: true, greater_than_or_equal_to: 1}, presence: true
end
