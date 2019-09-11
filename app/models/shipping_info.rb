class ShippingInfo < ApplicationRecord
    has_many :orders
    has_many :customers

    validates :shipping_date, :contact_number, presence: true
    validates :shipping_cost, numericality: {greater_than_or_equal_to: 0}, presence: true
end
