class Rating < ApplicationRecord
    validates :customer_id, :product_id, presence: true
    validates :value, inclusion: 1.0..5.0, presence: true 
end
