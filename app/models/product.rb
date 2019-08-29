class Product < ApplicationRecord
    validates :title, presence: true
    validates :stock, numericality: {only_integer: true, greater_than_or_equal_to: 0}, presence: true
    validates :product_type_id, numericality: {only_integer: true, greater_than_or_equal_to: 1}, presence: true
    validates :unit_price, numericality: { greater_than_or_equal_to: 0}, presence: true
end
