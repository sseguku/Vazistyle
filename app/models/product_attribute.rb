class ProductAttribute < ApplicationRecord
    validates :attribute_id, :attribute_value_id, :product_id, numericality: {only_integer: true, greater_than_or_equal_to: 1}, presence: true
end
