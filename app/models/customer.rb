class Customer < ApplicationRecord
    #Relationships
    has_many :ratings
    has_many :comments
    has_many :orders
    has_one :address
    has_one :club
    has_one :shippinginfo
    

    validates   :first_name, 
                :last_name,
                :phone_number,
                :username, 
                :password, 
                 presence: true
end
