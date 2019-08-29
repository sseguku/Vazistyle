class ProductTypeAttributeValue < ApplicationRecord
    validates :product_type_id, :attribute_value_id,  numericality: {only_integer: true, greater_than: 0}, presence: true
end
