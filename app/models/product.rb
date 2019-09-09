class Product < ApplicationRecord
    validates :title, :stock, presence: true
    validates :unit_price, numericality: {greater_than_or_equal_to: 0}, presence: true
    validates :discount, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 1}
    validates :product_category_id, numericality: {only_integer: true, greater_than_or_equal_to: 1}, presence: true
    validates :total_purchases, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
