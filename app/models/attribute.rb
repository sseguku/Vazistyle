class Attribute < ApplicationRecord
    validates :name, presence: true
end
