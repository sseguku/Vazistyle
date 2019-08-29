class City < ApplicationRecord
    validates :name, :country_id, presence: true
end
