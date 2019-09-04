class Customer < ApplicationRecord
    validates   :first_name, 
                :last_name,
                :phone_number,
                :username, 
                :password, 
                 presence: true
end
