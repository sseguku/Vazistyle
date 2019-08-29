class Comment < ApplicationRecord  
    validates :customer_id, :product_id, :message, presence: true
end
