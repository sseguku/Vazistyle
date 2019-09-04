class Comment < ApplicationRecord  
    validates :customer_id, 
              :product_id, 
                numericality: {only_integer: true, greater_than_or_equal_to: 1},
                presence: true
                
    validates :message, presence: true
end
