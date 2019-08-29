class Address < ApplicationRecord
    validates :address, :city_id, presence: true
end
