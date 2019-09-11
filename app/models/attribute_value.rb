class AttributeValue < ApplicationRecord
    has_many :product_attributes
    has_one :the_attribute
    
    validates :value, presence: true
    validates :attribute_id, numericality: {greater_than_or_equal_to: 1}, presence: true
end
