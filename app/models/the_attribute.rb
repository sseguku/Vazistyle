class TheAttribute < ApplicationRecord
    validates :name, presence: true 
    validates :product_category_id, numericality: {greater_than_or_equal_to: 1} ,presence: true
end
