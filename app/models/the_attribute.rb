class TheAttribute < ApplicationRecord
    has_one :product_category
    has_many :product_attributes
    has_many :attribute_values

    validates :name, presence: true 
    validates :product_category_id, numericality: {greater_than_or_equal_to: 1} ,presence: true
end
